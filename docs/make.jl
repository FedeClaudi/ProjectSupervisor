using ProjectSupervisor
using Documenter

DocMeta.setdocmeta!(ProjectSupervisor, :DocTestSetup, :(using ProjectSupervisor); recursive=true)

makedocs(;
    modules=[ProjectSupervisor],
    authors="FedeClaudi <federicoclaudi@protonmail.com> and contributors",
    repo="https://github.com/FedeClaudi/ProjectSupervisor.jl/blob/{commit}{path}#{line}",
    sitename="ProjectSupervisor.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://FedeClaudi.github.io/ProjectSupervisor.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/FedeClaudi/ProjectSupervisor.jl",
    devbranch="main",
)
