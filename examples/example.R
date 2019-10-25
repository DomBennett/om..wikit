library(outsider)
wikit <- module_import('wikit', repo = 'dombennett/om..wikit')
penguin_summary <- wikit('penguin', ncols = 80)
cat(penguin_summary)
