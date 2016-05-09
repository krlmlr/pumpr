context("pump")

test_that("can construct", {
  random_pump <- Pump$new(get_chunk = function() runif(10000),
                          has_completed = function() runif(1) < 1e-3)
})
