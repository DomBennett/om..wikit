#' @name wikit
#' @title Search for Wikipedia summaries
#' @description Return character string of Wikipedia summary.
#' @param topic Topic to search for
#' @param lang HTML ISO language code, e.g. "en"
#' @param ncols Number of columns
#' @example /examples/example.R
#' @export
wikit <- function(topic, lang = 'en', ncols = 140) {
  if (ncols < 15) {
    stop('`ncols` is less than 15', call. = FALSE)
  }
  invalid_topics <- c('--lang', '-l', '-b', '--browser', '-d', '-D', '--line',
                      '--version', '-v')
  if (!is.character(topic) || length(topic) > 1 || topic %in% invalid_topics) {
    stop('Invalid `topic`', call. = FALSE)
  }
  res_dir <- file.path(tempdir(), 'wikit_results')
  dir.create(res_dir)
  on.exit(unlink(x = res_dir, recursive = TRUE, force = TRUE))
  script_flpth <- file.path(res_dir, 'script.sh')
  script_cnntn <- file(script_flpth, 'wb')
  write(x = paste(c('wikit', '--lang', lang, '--line', ncols, topic, '>',
                    'results.txt'),
                  collapse = ' '), file = script_cnntn)
  close(script_cnntn)
  otsdr <- outsider_init(pkgnm = 'om..wikit', cmd = 'bash',
                         arglist = 'script.sh', files_to_send = script_flpth,
                         wd = res_dir)
  if (run(otsdr)) {
    res <- paste0(readLines(con = file.path(res_dir, 'results.txt')),
                  collapse = '\n')
    return(res)
  }
  invisible(NULL)
}
