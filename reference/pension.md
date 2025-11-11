# You guys have pensions?

Cash your pension out (count equivalent)

## Usage

``` r
pension(.data, ...)
```

## Arguments

- .data:

  A data frame or tibble

- ...:

  Variables to count by

## Value

A data frame with counts

## Examples

``` r
mtcars |> pension(cyl, gear)
#>   cyl gear  n
#> 1   4    3  1
#> 2   4    4  8
#> 3   4    5  2
#> 4   6    3  2
#> 5   6    4  4
#> 6   6    5  1
#> 7   8    3 12
#> 8   8    5  2
```
