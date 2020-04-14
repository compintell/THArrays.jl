using Documenter, ThArrays

makedocs(
  modules=[ThArrays],
  sitename="ThArrays",
  pages = [
      "Home"        => "index.md",
      "Tensor"      => "tensor.md",
      "AD"          => "ad.md",
      "TorchScript" => "torchscript.md",
      "Reference"   => "reference.md",
  ],
  format = Documenter.HTML(prettyurls = haskey(ENV, "GITHUB_EVENT_PATH")))

deploydocs(
    repo = "github.com/TuringLang/ThArrays.jl.git",
    devbranch = "master",
    devurl = "dev",
)
