Pump <- R6::R6Class(
  "Pump",
  public = list(
    initialize = function(get_chunk, has_completed) {
      private$get_chunk = get_chunk
      private$has_completed = has_completed
    }
  ),

  private = list(
    get_chunk = NULL,
    has_completed = NULL
  )
)
