#' @import dplyr
NULL

#' Chuck garbage rows
#'
#' Don't need all those rows? Just chuck it in the fuggit bucket (filter equivalent)
#'
#' @param .data A data frame or tibble
#' @param ... Logical predicates to keep rows
#' @return A data frame with yeeted rows removed
#' @export
#' @examples
#' mtcars |> chuck_it(mpg > 20, cyl == 4)
chuck_it <- function(.data, ...) {
  filter(.data, ...)
}

#' Pick your columns and get it over with
#'
#' You don’t need those columns, we have columns at home (select equivalent)
#'
#' @param .data A data frame or tibble
#' @param ... Columns to keep
#' @return A data frame with selected columns
#' @export
#' @examples
#' mtcars |> pick_your_poison(mpg, cyl, hp)
pick_your_poison <- function(.data, ...) {
  select(.data, ...)
}

#' Fiddle with it
#'
#' Fiddle with the data until she's where ya want her (mutate equivalent)
#'
#' @param .data A data frame or tibble
#' @param ... Name-value pairs of expressions
#' @return A data frame with new/modified columns
#' @export
#' @examples
#' mtcars |> fiddle(mpg_squared = mpg^2, high_hp = hp > 150)
fiddle <- function(.data, ...) {
  mutate(.data, ...)
}

#' Get the straight skinny
#'
#' Summary stats (summarize equivalent)
#'
#' @param .data A data frame or tibble
#' @param ... Name-value pairs of summary expressions
#' @return A data frame with summary statistics
#' @export
#' @examples
#' mtcars |> the_skinny(avg_mpg = mean(mpg), max_hp = max(hp))
the_skinny <- function(.data, ...) {
  summarise(.data, ...)
}

#' Get your act together
#'
#' I've been up since 5 AM (arrange equivalent)
#'
#' @param .data A data frame or tibble
#' @param ... Variables to sort by
#' @return A sorted data frame
#' @export
#' @examples
#' mtcars |> get_act_together(desc(mpg), hp)
get_act_together <- function(.data, ...) {
  arrange(.data, ...)
}

#' Take the bull by the horns
#'
#' Let's you-me divide and conquer this data, bucko (group_by equivalent)
#'
#' @param .data A data frame or tibble
#' @param ... Variables to group by
#' @return A grouped data frame
#' @export
#' @examples
#' mtcars |> divide_and_conquer(cyl) |> the_skinny(avg_mpg = mean(mpg))
divide_and_conquer <- function(.data, ...) {
  group_by(.data, ...)
}

#' Break up the band
#'
#' Every data frame has a Yoko (ungroup equivalent)
#'
#' @param .data A grouped data frame
#' @return An ungrouped data frame
#' @export
#' @examples
#' mtcars |> divide_and_conquer(cyl) |> yoko()
yoko <- function(.data) {
  ungroup(.data)
}

#' Column name too harsh?
#'
#' We can just rebrand (rename equivalent)
#'
#' @param .data A data frame or tibble
#' @param ... Name-value pairs (new_name = old_name)
#' @return A data frame with renamed columns
#' @export
#' @examples
#' mtcars |> rebrand(miles_per_gallon = mpg, horse_power = hp)
rebrand <- function(.data, ...) {
  rename(.data, ...)
}

#' I paid my dues, pal
#'
#' I deserve this distinction (distinct equivalent)
#'
#' @param .data A data frame or tibble
#' @param ... Optional columns to determine uniqueness
#' @return A data frame with unique rows
#' @export
#' @examples
#' mtcars |> paid_my_dues(cyl)
paid_my_dues <- function(.data, ...) {
  distinct(.data, ...)
}

#' Yank a column
#'
#' I pulled myself up by my bootstraps (pull equivalent)
#'
#' @param .data A data frame or tibble
#' @param var Column to extract
#' @return A vector
#' @export
#' @examples
#' mtcars |> bootstraps(mpg)
bootstraps <- function(.data, var) {
  pull(.data, {{ var }})
}

#' This is a peacekeeping mission
#'
#' We won't slice any heads (head/slice_head equivalent)
#'
#' @param .data A data frame or tibble
#' @param n Number of rows to keep
#' @return A data frame with first n rows
#' @export
#' @examples
#' mtcars |> peacekeeping_mission(5)
peacekeeping_mission <- function(.data, n = 6) {
  slice_head(.data, n = n)
}

#' You guys have pensions?
#'
#' Cash your pension out (count equivalent)
#'
#' @param .data A data frame or tibble
#' @param ... Variables to count by
#' @return A data frame with counts
#' @export
#' @examples
#' mtcars |> pension(cyl, gear)
pension <- function(.data, ...) {
  count(.data, ...)
}


#' Everyone needs a vacation home
#'
#' Merge vacay home and keep existing home (left join equivalent)
#'
#' @param x A data frame or tibble (primary residence)
#' @param y A data frame or tibble (vacation home)
#' @param by Columns to join by
#' @return A merged data frame
#' @examples
#' df1 <- data.frame(id = 1:3, name = c("Alice", "Bob", "Charlie"))
#' df2 <- data.frame(id = c(2, 3, 4), score = c(90, 85, 88))
#' df1 |> acquire(df2, by = "id")
#' @export
acquire <- function(x, y, ...) {
  left_join(x, y, ...)
}

#' The right table rubber stamps
#'
#' Merge, but only keep rows that are rubber stamped by the right table (right join equivalent)
#'
#' @param x A data frame or tibble (main table)
#' @param y A data frame or tibble (rubber-stamping table)
#' @param by Columns to join by
#' @return A merged data frame
#' @export
rubber_stamp <- function(x, y, ...) {
  right_join(x, y, ...)
}

#' Call a ceasefire
#'
#' We have to go along to get along, so call a ceasefire (inner join equivalent)
#'
#' @param x A data frame or tibble
#' @param y A data frame or tibble
#' @param by Columns to join by
#' @return A merged data frame
#' @export
ceasefire <- function(x, y, ...) {
  inner_join(x, y, ...)
}

#' Bring everyone together for a kumbaya session
#'
#' Let's just hash this out (full join equivalent)
#'
#' @param x A data frame or tibble
#' @param y A data frame or tibble
#' @return A merged data frame
#' @export
kumbaya <- function(x, y, ...) {
  full_join(x, y, ...)
}

#' Those kids that don't visit?
#'
#' Out of the will (anti_join equivalent)
#'
#' @param x A data frame or tibble
#' @param y A data frame or tibble
#' @return A data frame with non-matching rows
#' @export
out_of_the_will <- function(x, y, ...) {
  anti_join(x, y, ...)
}

#' Times are tough
#'
#' Trim the fat and remove rows that don't match (semi join equivalent)
#'
#' @param x A data frame or tibble
#' @param y A data frame or tibble
#' @return A data frame with matching rows
#' @export
trim_the_fat <- function(x, y, ...) {
  semi_join(x, y, ...)
}

#' Journey back to a simpler time
#'
#' Go back to when you remember the time's being better and you being thinner (lag equivalent)
#'
#' @param x A vector (memory).
#' @param n Positive integer of length 1 (How long ago was this).
#' @param default The value used to pad `x` back to its original size.
#' @param order_by An optional secondary vector that defines the ordering to use.
#' @return A vector with the same type and size as `x`.
#' @examples
#' back_in_my_day(1:5)
#' @export
back_in_my_day <- function(x, n = 1L, ...) {
  lag(x, n = n, ...)
}

#' Impart your wisdom on the current youths
#'
#' Youngin's lack the wisdom that comes with silver (or no) hair. Tell em/Teach em
#' what to do. (Improves upon lead function with `mature` parameter which assists
#' the user in aging by utilizing the Sys.sleep function)
#'
#' @param x A vector (a bit of wisdom).
#' @param n Positive integer of length 1 (How much wisdom is needed).
#' @param default The value used to pad `x` back to its original size.
#' @param order_by An optional secondary vector that defines the ordering to use.
#' @param mature An amount of time recommended for user to age default is 10 seconds.
#' @return A vector with the same type and size as `x`.
#' @examples
#' when_yur_older(1:5)
#' @export
when_yur_older <- function(x, n = 1L, mature = 10,...) {
  Sys.sleep(mature)
  lead(x, n = n, ...)
}


.onAttach <- function(libname, pkgname) {
  packageStartupMessage("boomerplyr loaded, sport \U0001F3D6\U0000FE0F\nNow wake up, smell the coffee and get to work!")
}
