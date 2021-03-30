




owl_axiom <-
  function(owl) {
    output <- list()
    for (i in 1:length(owl$`rdf:RDF`["owl:Axiom"])) {
      secretary::typewrite_progress(iteration = i,
                                    total = length(owl$`rdf:RDF`["owl:Axiom"]))
      keys <-
        get_keys(owl$`rdf:RDF`["owl:Axiom"][i]) %>%
        py_to_r()
      values <-
        get_values(owl$`rdf:RDF`["owl:Axiom"][i]) %>%
        py_to_r() %>%
        unlist()
      output[[i]] <-
        tibble(keys,
               values)
    }

    output
  }
