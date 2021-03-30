library(owlr)


test_owl <-
  read_owl(
    file.path(
      system.file(
        package = "owlr", "owl"),
      "test.owl")
  )


test_owl
