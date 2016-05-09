Pump <- R6::R6Class(
  "Pump",
  public = list(
    initialize = function(get_chunk, has_completed) {
      private$get_chunk = get_chunk
      private$has_completed = has_completed
    },

    pump = function() {
      stack <- rstackdeque::rstack()

      while (!private$has_completed()) {
        stack <- rstackdeque::insert_top(stack, private$get_chunk())
      }

      as.list(stack)
    }
  ),

  private = list(
    get_chunk = NULL,
    has_completed = NULL
  )
)
