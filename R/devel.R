# library(owlr)
# library(tidyverse)
#
# ncit <-
#   read_owl(
#     "~/OneDrive - ConcertAI/NCIt OWL/Thesaurus.owl"
#   )
#
# ncit_keys <-
#   c('owl:Ontology',
#     'owl:AnnotationProperty',
#     'rdf:Description',
#     'rdfs:Datatype',
#     'owl:ObjectProperty')
#
#
# for (ncit_key in ncit_keys) {
#   assign(x = ncit_key,
#          value = parse_owl(ncit['rdf:RDF'], ncit_key))
# }
#
# i <- 0
# for (ncit_key in ncit_keys) {
#   i <- i+1
#   secretary::typewrite_progress(
#     iteration = i,
#     total = length(ncit_keys)
#   )
#
#   if (!grepl("axiom", ncit_key, ignore.case = TRUE)) {
#     assign(x = ncit_key,
#            value = py_to_r(get(ncit_key)))
#     Sys.sleep(2)
#   }
# }
#
# ncit_keys2 <-
#   c('owl:Axiom',
#     'owl:Class')
#
# output <- list()
# for (i in 1:length(ncit$`rdf:RDF`["owl:Axiom"])) {
#   secretary::typewrite_progress(iteration = i,
#                                 total = length(ncit$`rdf:RDF`["owl:Axiom"]))
#   keys <-
#     get_keys(ncit$`rdf:RDF`["owl:Axiom"][i]) %>%
#       py_to_r()
#   values <-
#     get_values(ncit$`rdf:RDF`["owl:Axiom"][i]) %>%
#     py_to_r()
#   output[[i]] <-
#     tibble(keys,
#            values)
# }
#
#
# output <- list()
# for (i in 1:length(ncit$`rdf:RDF`["owl:Class"])) {
#   secretary::typewrite_progress(iteration = i,
#                                 total = length(ncit$`rdf:RDF`["owl:Class"]))
#   keys <-
#     get_keys(ncit$`rdf:RDF`["owl:Class"][i]) %>%
#     py_to_r()
#   values <-
#     get_values(ncit$`rdf:RDF`["owl:Class"][i]) %>%
#     py_to_r()
#   output[[i]] <-
#     tibble(keys,
#            values)
# }
#
#
#
# outparse_owl(
#   ncit$`rdf:RDF`["owl:Axiom"][[1]]
# )


#
# # Get OWL Namespaces
# ncit_parsed <-
#   get_keys(ncit['rdf:RDF'])
# ncit_parsed_r <-
#   reticulate::py_to_r(ncit_parsed)

#
# ncit_sections <- names(ncit$`rdf:RDF`)
# ncit_sections <- grep("^[@]{1}",
#                       x = ncit_sections,
#                       value = TRUE,
#                       invert = TRUE)
#
# i <- 0
# for (ncit_section in ncit_sections) {
#   objName <- str_replace_all(ncit_section,
#                              "(^.*?):(.*$)",
#                              "\\2")
#   i <- i+1
#   secretary::typewrite_progress(iteration = i,
#                                 total = length(ncit_sections))
#   assign(x = objName,
#          value = reticulate::py_to_r(ncit$`rdf:RDF`[ncit_section]))
# }
