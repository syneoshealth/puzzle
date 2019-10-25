
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
DT::datatable(df)
```

<!--html_preserve-->

<script type="application/json" data-for="htmlwidget-2fc024c28eb19570b18d">{"x":{"filter":"none","data":[["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16"],["","","","","","","","","","","","","","","",""],[1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2],[0,0,1,4,12,24,24,25,0,0,0.9,3.8,12.2,24,24,25.1],[0,0,1,4,12,0,0,1,0,0,0.9,3.8,12.2,0,0,1.1],[0,0,0,0,0,24,24,24,0,0,0,0,0,24,24,24],[0,0,0,0,0,0,24,24,0,0,0,0,0,0,24,24],[1,1,1,1,1,2,2,2,1,1,1,1,1,2,2,2],[100,null,null,null,null,200,null,null,100,null,null,null,null,200,null,null],[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[1,0,0,0,0,1,0,0,1,0,0,0,0,1,0,0],[null,0,10.8,7.6,2.3,null,0,24.2,null,0,7.3,4,1.1,null,0,14.1],[null,null,2.37954613413017,2.02814824729229,0.832909122935104,null,null,3.18635263316264,null,null,1.98787434815435,1.38629436111989,0.0953101798043249,null,null,2.64617479738412],[1,0,0,0,0,1,0,0,1,0,0,0,0,1,0,0],[77,77,77,77,77,77,77,77,82,82,82,82,82,82,82,82],[1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0]],"container":"<table class=\"display\">\n  <thead>\n    <tr>\n      <th> <\/th>\n      <th>C<\/th>\n      <th>ID<\/th>\n      <th>TIME<\/th>\n      <th>TAD<\/th>\n      <th>DOSETIME<\/th>\n      <th>PDOSETIME<\/th>\n      <th>NUMDOSE<\/th>\n      <th>AMT<\/th>\n      <th>CMT<\/th>\n      <th>EVID<\/th>\n      <th>DV<\/th>\n      <th>LDV<\/th>\n      <th>MDV<\/th>\n      <th>AGE<\/th>\n      <th>SEX<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"columnDefs":[{"className":"dt-right","targets":[2,3,4,5,6,7,8,9,10,11,12,13,14,15]},{"orderable":false,"targets":0}],"order":[],"autoWidth":false,"orderClasses":false}},"evals":[],"jsHooks":[]}</script>
<!--/html_preserve-->
