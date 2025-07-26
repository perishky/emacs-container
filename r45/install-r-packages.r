cran_packages = c(
    "biomaRt",
    "coin",
    "cowplot",
    "data.table",
    "dplyr",
    "e1071",
    "Cairo",
    "ess",
    "GGally",
    "ggplot2",
    "glmnet",
    "haven",
    "igraph",
    "kableExtra",
    "kknn",
    "knitr",
    "lgr",
    "MASS",
    "mclust",
    "mlr3verse",
    "neuralnet",
    "partykit",
    "precrec",
    "pROC",
    "quarto",
    "ranger",
    "readr",
    "remotes",
    "reshape",
    "rmarkdown",
    "roxygen",
    "rpart",
    "tableone",
    "testthat",
    "tidyverse",
    "xgboost")

github_packages = c(
    "mlr-org/mlr3extralearners@*release",
    "perishky/r_jive",
    "perishky/meffonym",
    "perishky/ewaff",
    "perishky/meffil")

installed_packages = rownames(installed.packages())

for (pkg in c(cran_packages,"remotes")) {
    if (! pkg %in% installed_packages) {
        install.packages(pkg)
        installed_packages = rownames(installed.packages())
    }
}

for (repo in git_packages) {
    pkg = remotes::github_remote(repo)$repo
    if (! basename(pkg) %in% installed_packages) {
        remotes::install_github(repo)
        installed_packages = rownames(installed.packages())
    }
}

