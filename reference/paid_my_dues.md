# I paid my dues, pal

I deserve this distinction (distinct equivalent)

## Usage

``` r
paid_my_dues(.data, ...)
```

## Arguments

- .data:

  A data frame or tibble

- ...:

  Optional columns to determine uniqueness

## Value

A data frame with unique rows

## Examples

``` r
mtcars |> paid_my_dues(cyl)
#>                   cyl
#> Mazda RX4           6
#> Datsun 710          4
#> Hornet Sportabout   8
```
