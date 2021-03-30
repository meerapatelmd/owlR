
<!-- README.md is generated from README.Rmd. Please edit that file -->

# owlr

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/owlr)](https://CRAN.R-project.org/package=owlr)
<!-- badges: end -->

The goal of owlr is to …

## Installation

You can install this package from [GitHub](https://GitHub.com) with:

``` r
library(devtools)
install_github("meerapatelmd/owlr")
```

## Example

``` r
library(owlr)
#> Loading required package: reticulate
#> 
#> Attaching package: 'owlr'
#> The following object is masked _by_ '.GlobalEnv':
#> 
#>     read_owl
test_owl <-
  read_owl(
    file.path(
      system.file(
        package = "owlr", "owl"),
      "test.owl")
  )
test_owl
#> $`rdf:RDF`
#> $`rdf:RDF`$`@xmlns`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#"
#> 
#> $`rdf:RDF`$`@xml:base`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12"
#> 
#> $`rdf:RDF`$`@xmlns:owl`
#> [1] "http://www.w3.org/2002/07/owl#"
#> 
#> $`rdf:RDF`$`@xmlns:rdf`
#> [1] "http://www.w3.org/1999/02/22-rdf-syntax-ns#"
#> 
#> $`rdf:RDF`$`@xmlns:xml`
#> [1] "http://www.w3.org/XML/1998/namespace"
#> 
#> $`rdf:RDF`$`@xmlns:xsd`
#> [1] "http://www.w3.org/2001/XMLSchema#"
#> 
#> $`rdf:RDF`$`@xmlns:rdfs`
#> [1] "http://www.w3.org/2000/01/rdf-schema#"
#> 
#> $`rdf:RDF`$`owl:Ontology`
#> $`rdf:RDF`$`owl:Ontology`$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12"
#> 
#> 
#> $`rdf:RDF`$`owl:Class`
#> $`rdf:RDF`$`owl:Class`[[1]]
#> $`rdf:RDF`$`owl:Class`[[1]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#AJCC_Staging"
#> 
#> $`rdf:RDF`$`owl:Class`[[1]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[1]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Classification_System"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[2]]
#> $`rdf:RDF`$`owl:Class`[[2]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Absolute"
#> 
#> $`rdf:RDF`$`owl:Class`[[2]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[2]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Time"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[3]]
#> $`rdf:RDF`$`owl:Class`[[3]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Aliquot"
#> 
#> $`rdf:RDF`$`owl:Class`[[3]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[3]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Level"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[4]]
#> $`rdf:RDF`$`owl:Class`[[4]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Classification_System"
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[5]]
#> $`rdf:RDF`$`owl:Class`[[5]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Clinical"
#> 
#> $`rdf:RDF`$`owl:Class`[[5]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[5]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Solid_Tumor_Stage"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[6]]
#> $`rdf:RDF`$`owl:Class`[[6]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Clinical_Performance"
#> 
#> $`rdf:RDF`$`owl:Class`[[6]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[6]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Scoring_System"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[7]]
#> $`rdf:RDF`$`owl:Class`[[7]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Contact_Information"
#> 
#> $`rdf:RDF`$`owl:Class`[[7]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[7]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Protected_Health_Information"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[8]]
#> $`rdf:RDF`$`owl:Class`[[8]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Curative"
#> 
#> $`rdf:RDF`$`owl:Class`[[8]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[8]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Intent"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[9]]
#> $`rdf:RDF`$`owl:Class`[[9]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Date_of_Birth"
#> 
#> $`rdf:RDF`$`owl:Class`[[9]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[9]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Identification"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[10]]
#> $`rdf:RDF`$`owl:Class`[[10]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Definitive"
#> 
#> $`rdf:RDF`$`owl:Class`[[10]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[10]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Intent"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[11]]
#> $`rdf:RDF`$`owl:Class`[[11]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Descriptors"
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[12]]
#> $`rdf:RDF`$`owl:Class`[[12]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Diagnostic"
#> 
#> $`rdf:RDF`$`owl:Class`[[12]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[12]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Intent"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[13]]
#> $`rdf:RDF`$`owl:Class`[[13]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Disease"
#> 
#> $`rdf:RDF`$`owl:Class`[[13]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[13]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Level"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[14]]
#> $`rdf:RDF`$`owl:Class`[[14]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Dynamic"
#> 
#> $`rdf:RDF`$`owl:Class`[[14]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[14]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Mutability"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[15]]
#> $`rdf:RDF`$`owl:Class`[[15]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Email_Address"
#> 
#> $`rdf:RDF`$`owl:Class`[[15]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[15]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Contact_Information"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[16]]
#> $`rdf:RDF`$`owl:Class`[[16]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#FAX_Number"
#> 
#> $`rdf:RDF`$`owl:Class`[[16]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[16]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Contact_Information"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[17]]
#> $`rdf:RDF`$`owl:Class`[[17]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Finding"
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[18]]
#> $`rdf:RDF`$`owl:Class`[[18]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#First_Name"
#> 
#> $`rdf:RDF`$`owl:Class`[[18]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[18]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Identification"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[19]]
#> $`rdf:RDF`$`owl:Class`[[19]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Fixed"
#> 
#> $`rdf:RDF`$`owl:Class`[[19]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[19]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Mutability"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[20]]
#> $`rdf:RDF`$`owl:Class`[[20]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Identification"
#> 
#> $`rdf:RDF`$`owl:Class`[[20]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[20]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Protected_Health_Information"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[21]]
#> $`rdf:RDF`$`owl:Class`[[21]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Identifiers"
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[22]]
#> $`rdf:RDF`$`owl:Class`[[22]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Imaging"
#> 
#> $`rdf:RDF`$`owl:Class`[[22]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[22]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Procedure"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[23]]
#> $`rdf:RDF`$`owl:Class`[[23]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Intent"
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[24]]
#> $`rdf:RDF`$`owl:Class`[[24]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#InterventionalRadiology"
#> 
#> $`rdf:RDF`$`owl:Class`[[24]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[24]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Service"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[25]]
#> $`rdf:RDF`$`owl:Class`[[25]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Karnofsky_Performance_Score"
#> 
#> $`rdf:RDF`$`owl:Class`[[25]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[25]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Clinical_Performance"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[26]]
#> $`rdf:RDF`$`owl:Class`[[26]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Last_Name"
#> 
#> $`rdf:RDF`$`owl:Class`[[26]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[26]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Identification"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[27]]
#> $`rdf:RDF`$`owl:Class`[[27]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Level"
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[28]]
#> $`rdf:RDF`$`owl:Class`[[28]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#MedicalOncology"
#> 
#> $`rdf:RDF`$`owl:Class`[[28]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[28]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Service"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[29]]
#> $`rdf:RDF`$`owl:Class`[[29]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Medical_Record_Number"
#> 
#> $`rdf:RDF`$`owl:Class`[[29]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[29]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Identification"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[30]]
#> $`rdf:RDF`$`owl:Class`[[30]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Middle_Name"
#> 
#> $`rdf:RDF`$`owl:Class`[[30]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[30]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Identification"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[31]]
#> $`rdf:RDF`$`owl:Class`[[31]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Mutability"
#> 
#> $`rdf:RDF`$`owl:Class`[[31]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[31]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Descriptors"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[32]]
#> $`rdf:RDF`$`owl:Class`[[32]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Not_Protected_Health_Information"
#> 
#> $`rdf:RDF`$`owl:Class`[[32]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[32]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Identifiers"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[33]]
#> $`rdf:RDF`$`owl:Class`[[33]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Observation"
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[34]]
#> $`rdf:RDF`$`owl:Class`[[34]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Operational"
#> 
#> $`rdf:RDF`$`owl:Class`[[34]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[34]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Timeframe"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[35]]
#> $`rdf:RDF`$`owl:Class`[[35]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Palliative"
#> 
#> $`rdf:RDF`$`owl:Class`[[35]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[35]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Intent"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[36]]
#> $`rdf:RDF`$`owl:Class`[[36]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Pathologic"
#> 
#> $`rdf:RDF`$`owl:Class`[[36]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[36]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Solid_Tumor_Stage"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[37]]
#> $`rdf:RDF`$`owl:Class`[[37]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Pathology"
#> 
#> $`rdf:RDF`$`owl:Class`[[37]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[37]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Service"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[38]]
#> $`rdf:RDF`$`owl:Class`[[38]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Patient"
#> 
#> $`rdf:RDF`$`owl:Class`[[38]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[38]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Level"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[39]]
#> $`rdf:RDF`$`owl:Class`[[39]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Perioperative"
#> 
#> $`rdf:RDF`$`owl:Class`[[39]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[39]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Operational"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[40]]
#> $`rdf:RDF`$`owl:Class`[[40]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Physical_Address"
#> 
#> $`rdf:RDF`$`owl:Class`[[40]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[40]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Contact_Information"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[41]]
#> $`rdf:RDF`$`owl:Class`[[41]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Postoperative"
#> 
#> $`rdf:RDF`$`owl:Class`[[41]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[41]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Operational"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[42]]
#> $`rdf:RDF`$`owl:Class`[[42]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Preoperative"
#> 
#> $`rdf:RDF`$`owl:Class`[[42]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[42]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Operational"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[43]]
#> $`rdf:RDF`$`owl:Class`[[43]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Procedure"
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[44]]
#> $`rdf:RDF`$`owl:Class`[[44]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Protected_Health_Information"
#> 
#> $`rdf:RDF`$`owl:Class`[[44]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[44]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Identifiers"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[45]]
#> $`rdf:RDF`$`owl:Class`[[45]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#RadiationOncology"
#> 
#> $`rdf:RDF`$`owl:Class`[[45]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[45]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Service"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[46]]
#> $`rdf:RDF`$`owl:Class`[[46]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Radiologic_Assessment"
#> 
#> $`rdf:RDF`$`owl:Class`[[46]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[46]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Scoring_System"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[47]]
#> $`rdf:RDF`$`owl:Class`[[47]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Radiology"
#> 
#> $`rdf:RDF`$`owl:Class`[[47]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[47]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Service"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[48]]
#> $`rdf:RDF`$`owl:Class`[[48]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Restaging"
#> 
#> $`rdf:RDF`$`owl:Class`[[48]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[48]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Intent"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[49]]
#> $`rdf:RDF`$`owl:Class`[[49]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Scoring_System"
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[50]]
#> $`rdf:RDF`$`owl:Class`[[50]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Screening"
#> 
#> $`rdf:RDF`$`owl:Class`[[50]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[50]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Intent"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[51]]
#> $`rdf:RDF`$`owl:Class`[[51]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Service"
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[52]]
#> $`rdf:RDF`$`owl:Class`[[52]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Siewert_Classification_of_Gastroesophageal_Junction_Adenocarcinomas"
#> 
#> $`rdf:RDF`$`owl:Class`[[52]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[52]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Classification_System"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[53]]
#> $`rdf:RDF`$`owl:Class`[[53]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Social_Security_Number"
#> 
#> $`rdf:RDF`$`owl:Class`[[53]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[53]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Identification"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[54]]
#> $`rdf:RDF`$`owl:Class`[[54]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Solid_Tumor_Stage"
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[55]]
#> $`rdf:RDF`$`owl:Class`[[55]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Specimen"
#> 
#> $`rdf:RDF`$`owl:Class`[[55]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[55]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Level"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[56]]
#> $`rdf:RDF`$`owl:Class`[[56]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Staging"
#> 
#> $`rdf:RDF`$`owl:Class`[[56]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[56]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Intent"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[57]]
#> $`rdf:RDF`$`owl:Class`[[57]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Start"
#> 
#> $`rdf:RDF`$`owl:Class`[[57]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[57]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Time"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[58]]
#> $`rdf:RDF`$`owl:Class`[[58]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Stop"
#> 
#> $`rdf:RDF`$`owl:Class`[[58]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[58]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Time"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[59]]
#> $`rdf:RDF`$`owl:Class`[[59]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Surgery"
#> 
#> $`rdf:RDF`$`owl:Class`[[59]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[59]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Service"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[60]]
#> $`rdf:RDF`$`owl:Class`[[60]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Surveillence"
#> 
#> $`rdf:RDF`$`owl:Class`[[60]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[60]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Intent"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[61]]
#> $`rdf:RDF`$`owl:Class`[[61]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Telephone_Number"
#> 
#> $`rdf:RDF`$`owl:Class`[[61]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[61]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Contact_Information"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[62]]
#> $`rdf:RDF`$`owl:Class`[[62]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Time"
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[63]]
#> $`rdf:RDF`$`owl:Class`[[63]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Timeframe"
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[64]]
#> $`rdf:RDF`$`owl:Class`[[64]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Treatment"
#> 
#> $`rdf:RDF`$`owl:Class`[[64]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[64]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Procedure"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[65]]
#> $`rdf:RDF`$`owl:Class`[[65]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#WHO_Classification_of_Central_Nervous_System_Tumors"
#> 
#> $`rdf:RDF`$`owl:Class`[[65]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[65]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Classification_System"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[66]]
#> $`rdf:RDF`$`owl:Class`[[66]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#hasLevel"
#> 
#> $`rdf:RDF`$`owl:Class`[[66]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[66]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Finding"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[67]]
#> $`rdf:RDF`$`owl:Class`[[67]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#hasService"
#> 
#> $`rdf:RDF`$`owl:Class`[[67]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[67]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Finding"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[68]]
#> $`rdf:RDF`$`owl:Class`[[68]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#hasStartTime"
#> 
#> $`rdf:RDF`$`owl:Class`[[68]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[68]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Timeframe"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[69]]
#> $`rdf:RDF`$`owl:Class`[[69]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#hasStopTime"
#> 
#> $`rdf:RDF`$`owl:Class`[[69]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[69]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Timeframe"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[70]]
#> $`rdf:RDF`$`owl:Class`[[70]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#hasTimeAnchor"
#> 
#> $`rdf:RDF`$`owl:Class`[[70]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[70]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Timeframe"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[71]]
#> $`rdf:RDF`$`owl:Class`[[71]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#hasValue"
#> 
#> $`rdf:RDF`$`owl:Class`[[71]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[71]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Finding"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[72]]
#> $`rdf:RDF`$`owl:Class`[[72]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#*Glioma_Score"
#> 
#> $`rdf:RDF`$`owl:Class`[[72]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[72]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Clinical_Performance"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[73]]
#> $`rdf:RDF`$`owl:Class`[[73]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#2010_Version"
#> 
#> $`rdf:RDF`$`owl:Class`[[73]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[73]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#WHO_Classification_of_Central_Nervous_System_Tumors"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[74]]
#> $`rdf:RDF`$`owl:Class`[[74]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#2016_Version"
#> 
#> $`rdf:RDF`$`owl:Class`[[74]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[74]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#WHO_Classification_of_Central_Nervous_System_Tumors"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[75]]
#> $`rdf:RDF`$`owl:Class`[[75]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#6th_Version"
#> 
#> $`rdf:RDF`$`owl:Class`[[75]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[75]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#AJCC_Staging"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[76]]
#> $`rdf:RDF`$`owl:Class`[[76]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#7th_Version"
#> 
#> $`rdf:RDF`$`owl:Class`[[76]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[76]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#AJCC_Staging"
#> 
#> 
#> 
#> $`rdf:RDF`$`owl:Class`[[77]]
#> $`rdf:RDF`$`owl:Class`[[77]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#8th_Version"
#> 
#> $`rdf:RDF`$`owl:Class`[[77]]$`rdfs:subClassOf`
#> $`rdf:RDF`$`owl:Class`[[77]]$`rdfs:subClassOf`$`@rdf:resource`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#AJCC_Staging"
#> 
#> 
#> 
#> 
#> $`rdf:RDF`$`rdf:Description`
#> $`rdf:RDF`$`rdf:Description`$`rdf:type`
#> $`rdf:RDF`$`rdf:Description`$`rdf:type`$`@rdf:resource`
#> [1] "http://www.w3.org/2002/07/owl#AllDisjointClasses"
#> 
#> 
#> $`rdf:RDF`$`rdf:Description`$`owl:members`
#> $`rdf:RDF`$`rdf:Description`$`owl:members`$`@rdf:parseType`
#> [1] "Collection"
#> 
#> $`rdf:RDF`$`rdf:Description`$`owl:members`$`rdf:Description`
#> $`rdf:RDF`$`rdf:Description`$`owl:members`$`rdf:Description`[[1]]
#> $`rdf:RDF`$`rdf:Description`$`owl:members`$`rdf:Description`[[1]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#MedicalOncology"
#> 
#> 
#> $`rdf:RDF`$`rdf:Description`$`owl:members`$`rdf:Description`[[2]]
#> $`rdf:RDF`$`rdf:Description`$`owl:members`$`rdf:Description`[[2]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#RadiationOncology"
#> 
#> 
#> $`rdf:RDF`$`rdf:Description`$`owl:members`$`rdf:Description`[[3]]
#> $`rdf:RDF`$`rdf:Description`$`owl:members`$`rdf:Description`[[3]]$`@rdf:about`
#> [1] "http://www.semanticweb.org/patelm9/ontologies/2020/1/untitled-ontology-12#Surgery"
```

## Code of Conduct

Please note that the owlr project is released with a [Contributor Code
of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
