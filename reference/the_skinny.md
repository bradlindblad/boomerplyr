# Get the straight skinny

Summary stats (summarize equivalent)

## Usage

``` r
the_skinny(.data, ...)
```

## Arguments

- .data:

  A data frame or tibble

- ...:

  Name-value pairs of summary expressions

## Value

A data frame with summary statistics

## Examples

``` r
mtcars |> the_skinny(avg_mpg = mean(mpg), max_hp = max(hp))
#>    avg_mpg max_hp
#> 1 20.09062    335
```
