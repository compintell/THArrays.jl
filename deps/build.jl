const PROJECT_DIR = (@__DIR__) |> dirname
const TORCH_LIB_DIR = joinpath(PROJECT_DIR, "csrc/libtorch/lib")
const TORCH_LIB_BUILD_DIR = joinpath(PROJECT_DIR, "deps/lib")
const JULIA_API_GENERATOR = joinpath(PROJECT_DIR, "src/api_generator.jl")


function build_locally()
    LIBTORCH_URL = if Sys.islinux()
        "https://download.pytorch.org/libtorch/cpu/libtorch-cxx11-abi-shared-with-deps-1.4.0%2Bcpu.zip"
    elseif Sys.isapple()
        "https://download.pytorch.org/libtorch/cpu/libtorch-macos-1.4.0.zip"
        # elseif Sys.iswindows()
        #     "https://download.pytorch.org/libtorch/cpu/libtorch-win-shared-with-deps-1.4.0.zip"
    else
        error("Your OS $(Sys.MACHINE) is not supported.")
    end

    if !isdir(TORCH_LIB_DIR)
        zipfile = download(LIBTORCH_URL)
        cd(joinpath(PROJECT_DIR, "csrc")) do
            run(`unzip $(zipfile)`)
        end
        isdir(TORCH_LIB_DIR) || error("Failed to get libtorch.")
    end

    isdir(TORCH_LIB_BUILD_DIR) || mkdir(TORCH_LIB_BUILD_DIR)

    cd(TORCH_LIB_BUILD_DIR) do
        cmd_cmake = `cmake -DCMAKE_PREFIX_PATH=$(joinpath(PROJECT_DIR, "csrc/libtorch")) ../../csrc`
        run(cmd_cmake)
        run(`make torch_capi`)
    end
end

build_locally()
run(`$(ENV["_"]) $(JULIA_API_GENERATOR)`)
