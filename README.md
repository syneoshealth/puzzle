
<!-- README.md is generated from README.Rmd. Please edit that file -->
puzzle
======

<!-- badges: start -->
<!-- badges: end -->
The goal of puzzle is assembling pharmacometric ready data sets from tabulated files.

Installation
------------

You can install the released version of puzzle from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("puzzle")
```

Example
-------

This is a basic example which shows you how to solve a common problem:

``` r
library(puzzle)
nm = list(pk = list(parent=as.data.frame(puzzle::df_pk_start)),
dose=as.data.frame(puzzle::df_dose_start),
cov=as.data.frame(puzzle::df_cov_start))
df = puzzle(directory=file.path(getwd()),
        order=c(0),
        pk=list(data=nm$pk),
        dose=list(data=nm$dose),
        cov=list(data=nm$cov))
#> Automatic coercion to numeric for CMT
#> 1=parent
#> Automatic coercion to numeric for SEX
#> 0=F
#> 1=M
```

If you run the R code showed above you will have a pharmacometrics ready data set as presented below:

``` r
library(knitr)
library(kableExtra)
library(tidyverse)
#> -- Attaching packages ------------------------------------------------------------- tidyverse 1.2.1 --
#> v ggplot2 3.2.1     v purrr   0.3.3
#> v tibble  2.1.3     v dplyr   0.8.3
#> v tidyr   1.0.0     v stringr 1.4.0
#> v readr   1.3.1     v forcats 0.4.0
#> -- Conflicts ---------------------------------------------------------------- tidyverse_conflicts() --
#> x dplyr::filter()     masks stats::filter()
#> x dplyr::group_rows() masks kableExtra::group_rows()
#> x dplyr::lag()        masks stats::lag()
df %>%
  dplyr::select(1:4,8:15) %>% 
  kable() %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed", "responsive"))
```

<table class="table table-striped table-hover table-condensed table-responsive" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
C
</th>
<th style="text-align:right;">
ID
</th>
<th style="text-align:right;">
TIME
</th>
<th style="text-align:right;">
TAD
</th>
<th style="text-align:right;">
AMT
</th>
<th style="text-align:right;">
CMT
</th>
<th style="text-align:right;">
EVID
</th>
<th style="text-align:right;">
DV
</th>
<th style="text-align:right;">
LDV
</th>
<th style="text-align:right;">
MDV
</th>
<th style="text-align:right;">
AGE
</th>
<th style="text-align:right;">
SEX
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0.0
</td>
<td style="text-align:right;">
0.0
</td>
<td style="text-align:right;">
100
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
77
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0.0
</td>
<td style="text-align:right;">
0.0
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0.0
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
77
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1.0
</td>
<td style="text-align:right;">
1.0
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
10.8
</td>
<td style="text-align:right;">
2.3795461
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
77
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
4.0
</td>
<td style="text-align:right;">
4.0
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
7.6
</td>
<td style="text-align:right;">
2.0281482
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
77
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
12.0
</td>
<td style="text-align:right;">
12.0
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
2.3
</td>
<td style="text-align:right;">
0.8329091
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
77
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
24.0
</td>
<td style="text-align:right;">
0.0
</td>
<td style="text-align:right;">
200
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
77
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
24.0
</td>
<td style="text-align:right;">
0.0
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0.0
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
77
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
25.0
</td>
<td style="text-align:right;">
1.0
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
24.2
</td>
<td style="text-align:right;">
3.1863526
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
77
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:right;">
2
</td>
<td style="text-align:right;">
0.0
</td>
<td style="text-align:right;">
0.0
</td>
<td style="text-align:right;">
100
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
82
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:right;">
2
</td>
<td style="text-align:right;">
0.0
</td>
<td style="text-align:right;">
0.0
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0.0
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
82
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:right;">
2
</td>
<td style="text-align:right;">
0.9
</td>
<td style="text-align:right;">
0.9
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
7.3
</td>
<td style="text-align:right;">
1.9878743
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
82
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:right;">
2
</td>
<td style="text-align:right;">
3.8
</td>
<td style="text-align:right;">
3.8
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
4.0
</td>
<td style="text-align:right;">
1.3862944
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
82
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:right;">
2
</td>
<td style="text-align:right;">
12.2
</td>
<td style="text-align:right;">
12.2
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1.1
</td>
<td style="text-align:right;">
0.0953102
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
82
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:right;">
2
</td>
<td style="text-align:right;">
24.0
</td>
<td style="text-align:right;">
0.0
</td>
<td style="text-align:right;">
200
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
82
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:right;">
2
</td>
<td style="text-align:right;">
24.0
</td>
<td style="text-align:right;">
0.0
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0.0
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
82
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:right;">
2
</td>
<td style="text-align:right;">
25.1
</td>
<td style="text-align:right;">
1.1
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
14.1
</td>
<td style="text-align:right;">
2.6461748
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
82
</td>
<td style="text-align:right;">
0
</td>
</tr>
</tbody>
</table>
