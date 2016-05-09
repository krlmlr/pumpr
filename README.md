
<!-- README.md is generated from README.Rmd. Please edit that file -->
pumpr
=====

Assemble a single result for data providers that split their output in chunks.

``` r
count <- 0L
stupid_pump <- pumpr::Pump$new(get_chunk = function() 1:10,
                               has_completed = function() { count <<- count + 1L; count > 5L})

stupid_pump$pump()
#> [[1]]
#>  [1]  1  2  3  4  5  6  7  8  9 10
#> 
#> [[2]]
#>  [1]  1  2  3  4  5  6  7  8  9 10
#> 
#> [[3]]
#>  [1]  1  2  3  4  5  6  7  8  9 10
#> 
#> [[4]]
#>  [1]  1  2  3  4  5  6  7  8  9 10
#> 
#> [[5]]
#>  [1]  1  2  3  4  5  6  7  8  9 10
```
