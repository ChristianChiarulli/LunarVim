O.formatters.filetype["rmd"] = O.formatters.filetype["r"]
-- R -e 'install.packages("languageserver",repos = "http://cran.us.r-project.org")'
require("lsp").setup(O.lang.r.lsp)
