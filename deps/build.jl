const PROJECT_DIR = (@__DIR__) |> dirname
const TORCH_LIB_DIR = joinpath(PROJECT_DIR, "csrc/libtorch/lib")
const TORCH_LIB_BUILD_DIR = joinpath(PROJECT_DIR, "deps/lib")
const JULIA_THC_GENERATOR = joinpath(PROJECT_DIR, "src/thc/thc-generator.jl")


function build_locally()
    LIBTORCH_URL = if Sys.islinux()
        "https://download.pytorch.org/libtorch/cpu/libtorch-cxx11-abi-shared-with-deps-2.1.0%2Bcpu.zip"
    elseif Sys.isapple()
        "https://download.pytorch.org/libtorch/cpu/libtorch-macos-arm64-2.1.0.zip"
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


function include_remote_script(version_str)
    # build_script_url = "https://github.com/compintell/THArrays.jl/releases/download/v$(version_str)/build_TorchCAPIDylib.v$(version_str).jl"
    # download, un tar
    dest = joinpath(@__DIR__, "libtorch_capi.v$(version_str).tar.gz")
    tarball_url = if Sys.islinux()
        "https://github.com/compintell/THArrays.jl/releases/download/v$(version_str)/TorchCAPIDylib.v$(version_str).x86_64-linux-gnu-cxx11.tar.gz"
    elseif Sys.isapple()
        error("Your OS $(Sys.MACHINE) is not supported.") # TODO
        "https://github.com/compintell/THArrays.jl/releases/download/v$(version_str)/TorchCAPIDylib.v$(version_str).x86_64-apple-darwin14.tar.gz"
    else
        error("Your OS $(Sys.MACHINE) is not supported.")
    end
    try
        tarball = download(tarball_url, dest)
        cd(@__DIR__) do
            run(`tar zxvf $(tarball)`)
        end
    catch
        @warn "download $(tarball_url) failed."
        return false
    end
    return true
end

function get_version_str()
    path = joinpath(@__DIR__, "../Project.toml")
    version_reg = r"version\s*=\s*\"(.*)\""
    open(path) do file
        lines = readlines(file)
        for line in lines
            m = match(version_reg, line)
            if isa(m, RegexMatch) return m.captures[1] end
        end
    end
end

version_str = get_version_str() |> strip |> (x) -> lstrip(x, ['v'])
if !isempty(get(ENV, "THARRAYS_DEV", "")) || !include_remote_script(version_str)
    @warn "try to build libtorch_capi locally."
    build_locally()
end

JULIA_EXE = joinpath(Sys.BINDIR, "julia")
run(`$(JULIA_EXE) $(JULIA_THC_GENERATOR)`)
