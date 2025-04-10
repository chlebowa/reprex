#' Run Application
#'
#' @examples
#' if (interactive()) {
#'   RUN()
#' }
#'
#' @export
RUN <- function() {
  shiny::shinyAppDir(
    system.file("shiny", package = "reprex"),
    options = list(
      "launch.browser" = TRUE
    )
  )
}
