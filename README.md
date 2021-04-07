
<!-- README.md is generated from README.Rmd. Please edit that file -->

# owlR

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/owlr)](https://CRAN.R-project.org/package=owlr)
<!-- badges: end -->

## Installation

You can install this package from [GitHub](https://GitHub.com) with:

``` r
library(devtools)
install_github("PrecisionHealthIntelligence/owlR")
```

## Example

``` r
library(owlR)
library(reticulate)
library(tidyverse) 


test_owl <-
  read_owl(
    file.path(
      system.file(
        package = "owlR", "owl"),
      "test.owl")
  )
test_owl$`rdf:RDF`$`rdf:Description` %>%
  py_to_r()
#> $`rdf:type`
#> $`rdf:type`$`@rdf:resource`
#> [1] "http://www.w3.org/2002/07/owl#AllDisjointClasses"
#> 
#> 
#> $`owl:members`
#> $`owl:members`$`@rdf:parseType`
#> [1] "Collection"
#> 
#> $`owl:members`$`rdf:Description`
#> $`owl:members`$`rdf:Description`[[1]]
#> $`owl:members`$`rdf:Description`[[1]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#MedicalOncology"
#> 
#> 
#> $`owl:members`$`rdf:Description`[[2]]
#> $`owl:members`$`rdf:Description`[[2]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#RadiationOncology"
#> 
#> 
#> $`owl:members`$`rdf:Description`[[3]]
#> $`owl:members`$`rdf:Description`[[3]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Surgery"
```

## Code of Conduct

Please note that the owlr project is released with a [Contributor Code
of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
