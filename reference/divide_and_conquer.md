# Take the bull by the horns

Let's you-me divide and conquer this data, bucko (group_by equivalent)

## Usage

``` r
divide_and_conquer(.data, ...)
```

## Arguments

- .data:

  A data frame or tibble

- ...:

  Variables to group by

## Value

A grouped data frame

## Examples

``` r
mtcars |> divide_and_conquer(cyl) |> the_skinny(avg_mpg = mean(mpg))
#> # A tibble: 3 × 2
#>     cyl avg_mpg
#>   <dbl>   <dbl>
#> 1     4    26.7
#> 2     6    19.7
#> 3     8    15.1
```
