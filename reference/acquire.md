# Everyone needs a vacation home

Merge vacay home and keep existing home (left join equivalent)

## Usage

``` r
acquire(x, y, ...)
```

## Arguments

- x:

  A data frame or tibble (primary residence)

- y:

  A data frame or tibble (vacation home)

- by:

  Columns to join by

## Value

A merged data frame

## Examples

``` r
df1 <- data.frame(id = 1:3, name = c("Alice", "Bob", "Charlie"))
df2 <- data.frame(id = c(2, 3, 4), score = c(90, 85, 88))
df1 |> acquire(df2, by = "id")
#>   id    name score
#> 1  1   Alice    NA
#> 2  2     Bob    90
#> 3  3 Charlie    85
```
