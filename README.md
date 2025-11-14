
# boomerplyr 🏖️ <a href="https://bradlindblad.github.io/boomerplyr/"><img src="man/figures/logo.png" align="right" height="120" alt="boomerplyr website" /></a>

<!-- badges: start -->
<!-- badges: end -->

> Grab your data by the horns and wrangle it

## What is this?

`boomerplyr` is an alternative syntax for `dplyr` that replaces boring old function names with Boomer slang. Inspired by [genzplyr](https://hadley.github.io/genzplyr/)


## Installation


``` r
# install.packages("pak")
pak::pak("bradlindblad/boomerplyr")
```

## Translation guide

| **dplyr verb** | **boomerplyr verb**       | **Meaning** |
|----------------|--------------------------|--------------|
| `filter()`     | `chuck_it()`             | Don't need all those rows? Just chuck it in the fuggit bucket. |
| `select()`     | `pick_your_poison()`     | You don’t need those columns, we have columns at home. |
| `mutate()`     | `fiddle()`               | Fiddle with the data until she's where ya want her. |
| `summarise()`  | `the_skinny()`           | Get the straight skinny, summary stats. |
| `arrange()`    | `get_act_together()`     | Get your act together, I've been up since 5 AM. |
| `group_by()`   | `divide_and_conquer()`   | Let's you-me divide and conquer this data, bucko. |
| `ungroup()`    | `yoko()`                 | Break up the band. |
| `rename()`     | `rebrand()`              | Column name too harsh? We can just rebrand. |
| `distinct()`   | `paid_my_dues()`         | I've paid my dues, pal, I deserve this distinction. |
| `pull()`       | `bootstraps()`           | Extract a column (I deserve this, I pulled myself up by my bootstraps). |
| `slice_head()` | `peacekeeping_mission()` | We're not slicing any heads, this is a peacekeeping mission. |
| `count()`      | `pension()`              | Count your pension bucks. |
| `left_join()`  | `acquire()`              | Everyone needs a vacation home (merge and keep existing home). |
| `right_join()` | `rubber_stamp()`         | Merge, but only keep rows that are rubber stamped by the right table. |
| `inner_join()` | `ceasefire()`            | We have to go along to get along, so call a ceasefire (keep rows that match). |
| `full_join()`  | `kumbaya()`              | Bring everyone together for a kumbaya session. |
| `anti_join()`  | `out_of_the_will()`      | Those kids that don't visit? Out of the will (remove non-matching rows). |
| `semi_join()`  | `trim_the_fat()`         | Times are tough, trim the fat and remove rows that don't match. |


## Usage
You want me to hold your hand? No one was holding my hand when I was walking to school uphill both ways!

Just figure it out like I did
