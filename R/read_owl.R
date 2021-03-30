read_owl <-
  function(owl_path) {
    reticulate::py_eval(
      sprintf(
        "
        import xmltodict
        with open('%s', 'rb') as f:
          output = xmltodict.parse(f)
          return(output)
        ",
          owl_path
      )
    )
  }
