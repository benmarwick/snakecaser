<!-- README.md is generated from README.Rmd. Please edit that file -->
snakecaser
==========

The goal of snakecaser is to provide an RStudio add-in for converting a
character string to snake case. I often want to do this when I create
objects in R and want to name them with short descriptive phrases.

Examples
--------

“Here is some, rather simple, example text.”

And here is what is looks like after the snakecaser add-in is used on
it:

here\_is\_some\_rather\_simple\_example\_text

There is also a function, `to_snake_case()`, which can be called
directly, independent of the RStudio add-in:

``` r
library(snakecaser)
to_snake_case("snakes are venomous, not poisonous!")
#> [1] "snakes_are_venomous_not_poisonous"
```

Installation
------------

This add-in can be installed with:

``` r
devtools::install_github("benmarwick/snakecaser")
```

Related
-------

[Tazinho/snakecase](https://github.com/Tazinho/snakecase): A very
thorough and systematic package for converting strings to several
different varieties of common cases.

[sfirke/janitor](https://github.com/sfirke/janitor): Contains numerous
functions for examining and cleaning dirty data, including
`clean_names()`, which is a thorough snake case converter.

[hrbrmstr/docxtractr](https://github.com/hrbrmstr/docxtractr/issues/7):
For reading tables from Microsoft Word docx documents, has `mcga()` for
making column names great by converting them to snake case. The direct
inspiration for this add-in.

[decisionpatterns/lettercase](https://github.com/decisionpatterns/lettercase):
Utilities for formatting strings with consistent capitalization, word
breaks and white space, including a snake case converter
`lettercase::str_snake_case()`.
