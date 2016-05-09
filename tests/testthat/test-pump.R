context("pump")

set.seed(20160509L)

test_that("can construct", {
  random_pump <- Pump$new(get_chunk = function() runif(10000),
                          has_completed = function() runif(1) < 1e-3)
})

test_that("can pump", {
  count <- 0L
  random_pump <- Pump$new(get_chunk = function() runif(10000),
                          has_completed = function() { count <<- count + 1L; count > 5L})

  pump_result <- random_pump$pump()

  expect_is(pump_result, "list")
  expect_equal(length(pump_result), 5)
})
