.onLoad <- function(libname, pkgname) {
    lib_path <-
      system.file(package = "owlr",
                  "py")
    py_path <-
      file.path(lib_path,
                "read_owl.py")

    eval(
      expr =
        reticulate::source_python(
            file = py_path),
      envir =
        parent.frame()
    )
  }
