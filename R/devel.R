#' library(owlR)
#' library(tidyverse)
#'
#' ncit <-
#'   read_owl(
#'     "~/OneDrive - ConcertAI/NCIt OWL/Thesaurus.owl"
#'   )
#'
#' # ncit_keys <-
#' #   c('owl:Ontology',
#' #     'owl:AnnotationProperty',
#' #     'rdf:Description',
#' #     'rdfs:Datatype',
#' #     'owl:ObjectProperty')
#'
#' ncit_keys <-
#'   c(#'owl:Ontology',
#'     'owl:AnnotationProperty',
#'     #'rdf:Description',
#'     'rdfs:Datatype',
#'     'owl:ObjectProperty')
#'
#' owl_env <- rlang::env()
#' for (ncit_key in ncit_keys) {
#'   assign(x = ncit_key,
#'          value = jsonlite::fromJSON(py_to_r(as_json(subset_owl(ncit['rdf:RDF'], ncit_key)))),
#'          envir = owl_env)
#' }
#'
#' # ncit_keys2 <-
#' #   c('owl:Axiom',
#' #     'owl:Class')
#'
#' ncit_keys2 <-
#'   c('owl:Class')
#'
#' for (ncit_key in ncit_keys2) {
#'   assign(x = ncit_key,
#'          value = jsonlite::fromJSON(py_to_r(as_json(subset_owl(ncit['rdf:RDF'], ncit_key)))),
#'          envir = owl_env)
#' }
#'
#'
#' # Annotation Property Dictionary
#' annotation_property_dict <-
#'   owl_env$`owl:AnnotationProperty` %>% select(NHC0, P108, `rdfs:label`) %>%
#'   transmute(
#'     key = NHC0,
#'     # Substitute rdfs:label if P108 is empty
#'     value = coalesce(P108, `rdfs:label`)) %>%
#'   # Filter out NA keys
#'   filter(!is.na(key))
#'
#' # Object Property Dictionary
#' object_property_dict <-
#'   owl_env$`owl:ObjectProperty` %>% select(`@rdf:about`, NHC0, P108, `rdfs:label`) %>%
#'   mutate(
#'     key = `@rdf:about`,
#'     value = coalesce(P108, `rdfs:label`)) %>%
#'   filter(!is.na(NHC0)) %>%
#'   select(key, value)
#'
#' # Classes
#' owl_env$`owl:Class`$`rdfs:comment` <- NULL
#'
#' # Annotation Property keys that start with `A` represent relationships
#' relationship_dictionary <-
#'   annotation_property_dict %>%
#'   rubix::filter_at_grepl(col = key,
#'                          grepl_phrase = "^A",
#'                          ignore.case = F)
#'
#' class_relationships <-
#'   owl_env$`owl:Class` %>%
#'   select(any_of(relationship_dictionary$key))
#'
#' output <- list()
#' for (i in 1:length(relationship_dictionary$key)) {
#'   secretary::typewrite_progress(
#'     i,
#'     total = length(relationship_dictionary$key)
#'   )
#'   if (relationship_dictionary$key[i] %in% colnames(owl_env$`owl:Class`)) {
#'
#'     eval_string <- sprintf("owl_env$`owl:Class`$%s", relationship_dictionary$key[i])
#'     eval_expr <- rlang::parse_expr(eval_string)
#'     if (class(eval(eval_expr)) == "list") {
#'       input <- eval(eval_expr)
#'       names(input) <- 1:length(input)
#'
#'       input2 <- list()
#'       for (j in 1:length(input)) {
#'         if (is.null(input[[j]])) {
#'             input2[[j]] <- NA
#'         } else if (is.data.frame(input[[j]])) {
#'           input2[[j]] <-
#'             input[[j]] %>%
#'             select("@rdf:resource") %>%
#'             unlist() %>%
#'             unname()
#'         } else {
#'           input2[[j]] <-
#'             unlist(input[[j]]) %>%
#'             unname()
#'         }
#'       }
#'
#'       input3 <- list()
#'       for (k in 1:length(input2)) {
#'         input3[[k]] <-
#'           as_tibble_col(input2[[k]])
#'       }
#'
#'       output[[length(output)+1]] <- input3
#'       names(output)[length(output)] <- relationship_dictionary$key[i]
#'     } else if (class(eval(eval_expr)) == "data.frame") {
#'       input <- eval(eval_expr)
#'       input2 <- as.list(input$`@rdf:resource`)
#'       names(input2) <- 1:length(input2)
#'
#'       input3 <- list()
#'       for (l in 1:length(input2)) {
#'         input3[[l]] <-
#'           as_tibble_col(input2[[l]])
#'       }
#'
#'       output[[length(output)+1]] <- input3
#'       names(output)[length(output)] <- relationship_dictionary$key[i]
#'
#'     } else {
#'       secretary::press_enter()
#'     }
#'   }
#' }
#'
#' output2 <- list()
#' for (i in 1:length(output)) {
#'   x <- output[[i]]
#'   names(x) <- 1:length(x)
#'   output2[[i]] <- x
#' }
#' names(output2) <- names(output)
#'
#' output3 <-
#'   output2 %>%
#'   map(bind_rows, .id = "index")
#'
#' output4 <-
#'   output3 %>%
#'   bind_rows(.id = "relationship_id")
#'
#' output5 <-
#'   output4 %>%
#'   left_join(relationship_dictionary,
#'             by = c("relationship_id" = "key")) %>%
#'   rename(value = `value.x`,
#'          relationship = `value.y`)
#'
#'
#' concept_relationship <-
#'   tibble(concept_uri = owl_env$`owl:Class`$`@rdf:about`) %>%
#'   rowid_to_column("index") %>%
#'   mutate(index = as.character(index)) %>%
#'   left_join(output5, by = "index") %>%
#'   distinct() %>%
#'   filter(!is.na(value))
#'
#'
#'
#'
#' owl_env$`owl:Class`$`rdfs:subClassOf`
#' owl_env$`owl:Class`$`owl:equivalentClass`
#' owl_env$`owl:Class`$`owl:disjointWith`
#'
#' output_b <- list()
#' classification_relationships <- c("rdfs:subClassOf", "owl:equivalentClass", "owl:disjointWith")
#' for (i in 1:length(classification_relationships)) {
#'   secretary::typewrite_progress(
#'     i,
#'     total = length(classification_relationships)
#'   )
#'   if (classification_relationships[i] %in% colnames(owl_env$`owl:Class`)) {
#'
#'     eval_string <- sprintf("owl_env$`owl:Class`$`%s`", classification_relationships[i])
#'     eval_expr <- rlang::parse_expr(eval_string)
#'     if (class(eval(eval_expr)) == "list") {
#'       input <- eval(eval_expr)
#'       names(input) <- 1:length(input)
#'
#'       input2 <- list()
#'       for (j in 1:length(input)) {
#'         if (is.null(input[[j]])) {
#'           input2[[j]] <- NA
#'         } else if (is.data.frame(input[[j]])) {
#'           input2[[j]] <-
#'             input[[j]] %>%
#'             select("@rdf:resource") %>%
#'             unlist() %>%
#'             unname()
#'         } else {
#'           input2[[j]] <-
#'             unlist(input[[j]]) %>%
#'             unname()
#'         }
#'       }
#'
#'       input3 <- list()
#'       for (k in 1:length(input2)) {
#'         input3[[k]] <-
#'           as_tibble_col(input2[[k]])
#'       }
#'
#'       output_b[[length(output_b)+1]] <- input3
#'       names(output_b)[length(output_b)] <- classification_relationships[i]
#'     } else if (class(eval(eval_expr)) == "data.frame") {
#'       input <- eval(eval_expr)
#'       input2 <- as.list(input$`@rdf:resource`)
#'       names(input2) <- 1:length(input2)
#'
#'       input3 <- list()
#'       for (l in 1:length(input2)) {
#'         input3[[l]] <-
#'           as_tibble_col(input2[[l]])
#'       }
#'
#'       output_b[[length(output_b)+1]] <- input3
#'       names(output_b)[length(output_b)] <- classification_relationships[i]
#'
#'     } else {
#'       secretary::press_enter()
#'     }
#'   }
#' }

