# library(owlr)
# library(tidyverse)
# ncit <-
#   read_owl(
#     "~/OneDrive - ConcertAI/NCIt OWL/Thesaurus.owl"
#   )
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
