using Documenter, THArrays

makedocs(
    modules=[THArrays],
    sitename="THArrays",
    pages = [
        "Home"        => "index.md",
        "Tensor"      => "tensor.md",
        "AD"          => "ad.md",
        "TorchScript" => "torchscript.md",
        "Reference"   => "reference.md",
    ],
    format = Documenter.HTML(prettyurls = haskey(ENV, "GITHUB_EVENT_PATH"),
                             size_threshold_warn = 10 * 1024 * 1024,
                             size_threshold = 10 * 1024 * 1024))

deploydocs(
    repo = "github.com/compintell/THArrays.jl.git",
    devbranch = "master",
    devurl = "dev",
)
