#' A covariate data set.
#'
#' A dataset containing covariate information.
#'
#' @format A tibble with 12 rows and 4 variables:
#' \describe{
#'   \item{ID}{Individual}
#'   \item{TIME}{Time, in hours}
#'   \item{VARIABLE}{Variable}
#'   \item{VALUE}{Value of the variable}
#' }
"df_cov"

#' A covariate data set to be used with EVID=4.
#'
#' A dataset containing covariate information.
#'
#' @format A data frame with 119 rows and 6 variables:
#' \describe{
#'   \item{ID}{Individual}
#'   \item{PERIOD}{Period}
#'   \item{TIMEPOINT}{Timepoint, in hours}
#'   \item{TIME}{Time, in hours}
#'   \item{VARIABLE}{Variable}
#'   \item{VALUE}{Value of the variable}
#' }
"df_cov_evid4"

#' Starting covariate data set.
#'
#' A dataset containing covariate information.
#'
#' @format A data frame with 4 rows and 3 variables:
#' \describe{
#'   \item{ID}{Individual}
#'   \item{VARIABLE}{Variable}
#'   \item{VALUE}{Value of the variable}
#' }
"df_cov_start"

#' A covariate data set to be used with time dependent covariates.
#'
#' A dataset containing time dependent covariates.
#'
#' @format A data frame with 6 rows and 4 variables:
#' \describe{
#'   \item{ID}{Individual}
#'   \item{VARIABLE}{Variable}
#'   \item{VALUE}{Value of the variable}
#'   \item{TIME}{Time, in hours}
#' }
"df_cov_time_dependent_start"


#' A dose data set.
#'
#' A dataset containing dose information.
#'
#' @format A data frame with 12 rows and 3 variables:
#' \describe{
#'   \item{ID}{Individual}
#'   \item{TIME}{Time, in hours}
#'   \item{AMT}{Dose, in mg}
#' }
"df_dose"

#' A dose data set including datetimes.
#'
#' A dataset containing dose information in datetime format.
#'
#' @format A data frame with 5 rows and 12 variables:
#' \describe{
#'   \item{ID}{Individual}
#'   \item{TRT}{Treatment label}
#'   \item{DOSE}{Dose, in mg}
#'   \item{PERIOD}{Period}
#'   \item{DAY}{Day of adminsitration}
#'   \item{AMT}{Dose, in mg}
#'   \item{DATETIME}{Dta ein datetime format}
#'   \item{TIMEPOINT}{Timepoint}
#'   \item{COHORT}{Cohort}
#'   \item{FORM}{Drug form}
#'   \item{TREATMENT}{Treatment}
#'   \item{FOOD}{Food status}
#' }
"df_dose_datetime"

#' A dose data set to be used with EVID=4.
#'
#' A dataset containing dosing information.
#'
#' @format A data frame with 418 rows and 10 variables:
#' \describe{
#'   \item{ID}{Individual}
#'   \item{PERIOD}{Period}
#'   \item{TIMEPOINT}{Timepoint}
#'   \item{TIME}{Time, in hours}
#'   \item{AMT}{Dose, in mg}
#'   \item{TRT}{Treatment label}
#'   \item{DAY}{Day of adminsitration}
#'   \item{SEQUENCE}{Sequence}
#'   \item{TRT2}{Treatment}
#'   \item{EVID}{Evid value}
#' }
"df_dose_evid4"

#' A dose data set to be used with optional columns.
#'
#' A dataset containing dosing information.
#'
#' @format A data frame with 4 rows and 6 variables:
#' \describe{
#'   \item{ID}{Individual}
#'   \item{TIME}{Time, in hours}
#'   \item{AMT}{Dose, in mg}
#'   \item{OCC}{Occasion}
#'   \item{TIMEPOINT}{Timepoint}
#'   \item{TRT}{Treatment}
#' }
"df_dose_optional_columns"

#' A dose data set example.
#'
#' A dataset containing dosing information.
#'
#' @format A data frame with 4 rows and 3 variables:
#' \describe{
#'   \item{ID}{Individual}
#'   \item{TIME}{Time, in hours}
#'   \item{AMT}{Dose, in mg}
#' }
"df_dose_start"

#' An extra times data set example.
#'
#' A dataset containing extra times.
#'
#' @format A data frame with 251 rows and 1 variable:
#' \describe{
#'   \item{TIME}{Time, in hours}
#' }
"df_extra_times"

#' An extra times data set example with datetime format.
#'
#' A dataset containing extra times in datetime format.
#'
#' @format A data frame with 20 rows and 1 variable:
#' \describe{
#'   \item{ID}{Individual}
#'   \item{DATETIME}{Datetime}
#'   \item{TIMEPOINT}{Timepoint}
#' }
"df_extra_times_datetime"


#' An extra times metabolite data set to be used with EVID=4.
#'
#' A dataset containing extra times for an hypothetical metabolite.
#'
#' @format A data frame with 770 rows and 3 variable:
#' \describe{
#'   \item{ID}{Individual}
#'   \item{TIMEPOINT}{Timepoint}
#'   \item{TIME}{Time, in hours}
#' }
"df_extra_times_metabolite_evid4"

#' An extra times parent data set to be used with EVID=4.
#'
#' A dataset containing extra times for an hypothetical parent drug.
#'
#' @format A data frame with 770 rows and 3 variable:
#' \describe{
#'   \item{ID}{Individual}
#'   \item{TIMEPOINT}{Timepoint}
#'   \item{TIME}{Time, in hours}
#' }
"df_extra_times_parent_evid4"

#' An extra times data set example.
#'
#' A dataset containing extra times.
#'
#' @format A data frame with 1040 rows and 3 variable:
#' \describe{
#'   \item{ID}{Individual}
#'   \item{TIMEPOINT}{Timepoint}
#'   \item{TIME}{Time, in hours}
#' }
"df_extra_times_time"

#' A pharmacokinetic metabolite data set to be used with EVID=4.
#'
#' A dataset containing pharmacokinetic information for an hypothetical metabolite.
#'
#' @format A data frame with 1359 rows and 7 variables:
#' \describe{
#'   \item{ID}{Individual}
#'   \item{PERIOD}{Period}
#'   \item{TIMEPOINT}{Timepoint}
#'   \item{TIME}{Time, in hours}
#'   \item{DV}{Drug concentration, in mg/L}
#'   \item{TRT}{Treatment label}
#'   \item{TIMEDAY}{Timeday}
#'   \item{DAY}{Day of adminsitration}
#' }
"df_metabolite_evid4"

#' A pharmacokinetic parent data set to be used with EVID=4.
#'
#' A dataset containing pharmacokinetic information for an hypothetical parent drug.
#'
#' @format A data frame with 1359 rows and 7 variables:
#' \describe{
#'   \item{ID}{Individual}
#'   \item{PERIOD}{Period}
#'   \item{TIMEPOINT}{Timepoint}
#'   \item{TIME}{Time, in hours}
#'   \item{DV}{Drug concentration, in mg/L}
#'   \item{TRT}{Treatment label}
#'   \item{TIMEDAY}{Timeday}
#'   \item{DAY}{Day of adminsitration}
#' }
"df_parent_evid4"

#' An starting pharmacoynamic data set example.
#'
#' A dataset containing pharmacodynamic observations.
#'
#' @format A data frame with 1040 rows and 3 variable:
#' \describe{
#'   \item{ID}{Individual}
#'   \item{TIME}{Time, in hours}
#'   \item{DV}{Response, ng/mL}
#' }
"df_pd_start"

#' A pharmacokinetic data set example.
#'
#' A dataset containing pharmacokinetic information.
#'
#' @format A data frame with 132 rows and 4 variable:
#' \describe{
#'   \item{ID}{Individual}
#'   \item{TIMEPOINT}{Timepoint}
#'   \item{TIME}{Time, in hours}
#'   \item{DV}{Response, ng/mL}
#' }
"df_pd_start"

#' A pharmacokinetic data set example in datetime format.
#'
#' A dataset containing pharmacokinetic information.
#'
#' @format A data frame with 65 rows and 7 variable:
#' \describe{
#'   \item{ID}{Individual}
#'   \item{DV}{Response, ng/mL}
#'   \item{DATETIME}{Datetime}
#'   \item{TIMEPOINT}{Timepoint}
#'   \item{DAY}{Day}
#'   \item{PERIOD}{Period}
#'   \item{BLQ}{I a BLQ?}
#'   \item{LLOQ}{Lower limit of quantification, ng/mL}
#' }
"df_pk_datetime"

#' A pharmacokinetic data set of metabolite data.
#'
#' A dataset containing pharmacokinetic information for an hypothetical metabolite.
#'
#' @format A data frame with 10 rows and 3 variable:
#' \describe{
#'   \item{ID}{Individual}
#'   \item{TIME}{Time, in hours}
#'   \item{DV}{Drug concentration, ng/mL}
#' }
"df_pk_metabolite"

#' A pharmacokinetic data set to be used with optional columns.
#'
#' A dataset containing pharmacokinetic information.
#'
#' @format A data frame with 12 rows and 5 variable:
#' \describe{
#'   \item{ID}{Individual}
#'   \item{TIME}{Time, in hours}
#'   \item{DV}{Drug concentration, ng/mL}
#'   \item{OCC}{Occasion}
#'   \item{TIMEPOINT}{Timepoint}
#' }
"df_pk_optional_columns"

#' A pharmacokinetic data set for an hypothetical parent drug.
#'
#' A dataset containing pharmacokinetic information.
#'
#' @format A data frame with 12 rows and 3 variable:
#' \describe{
#'   \item{ID}{Individual}
#'   \item{TIME}{Time, in hours}
#'   \item{DV}{Drug concentration, ng/mL}
#' }
"df_pk_parent"

#' An starting pharmacokinetic data set.
#'
#' A dataset containing pharmacokinetic information.
#'
#' @format A data frame with 12 rows and 3 variable:
#' \describe{
#'   \item{ID}{Individual}
#'   \item{TIME}{Time, in hours}
#'   \item{DV}{Drug concentration, ng/mL}
#' }
"df_pk_start"

#' A pharmacodynamic data set.
#'
#' A dataset containing pharmacodynamic information for response 1.
#'
#' @format A data frame with 6 rows and 3 variable:
#' \describe{
#'   \item{ID}{Individual}
#'   \item{TIME}{Time, in hours}
#'   \item{DV}{Response, ng/mL}
#' }
"df_pd_response1"

#' A pharmacodynamic data set.
#'
#' A dataset containing pharmacodynamic information for response 2.
#'
#' @format A data frame with 6 rows and 3 variable:
#' \describe{
#'   \item{ID}{Individual}
#'   \item{TIME}{Time, in hours}
#'   \item{DV}{Response, seconds}
#' }
"df_pd_response2"

#' A pharmacodynamic data set.
#'
#' A dataset containing pharmacodynamic information for response 3.
#'
#' @format A data frame with 6 rows and 3 variable:
#' \describe{
#'   \item{ID}{Individual}
#'   \item{TIME}{Time, in hours}
#'   \item{DV}{Response, in hours}
#' }
"df_pd_response3"