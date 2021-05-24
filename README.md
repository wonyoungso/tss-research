# Disqualifying Records Were Found: Measuring the Effect of Landlords’ Interpretation on Tenant Screening Reports: Data and Code
This repository includes data and code associated with the behavioral experiment that was conducted from Feburary 2021 to April 2021 at Amazon Mechanical Turk workers who are landlords. The analysis was done using R. The files in this folder include:

* `analysis_tss.rmd`: the R code for the paper.
* `mturk_landlords_decisions_05-2021.json` all decisions that landlords made in the experiment. 

# R Library versions used in this analysis
The following is output from the sessionInfo() command in R from the R version and libraries that were used to generate results:

```
R version 4.0.2 (2020-06-22)
Platform: x86_64-apple-darwin17.0 (64-bit)
Running under: macOS  10.16

Matrix products: default
LAPACK: /Library/Frameworks/R.framework/Versions/4.0/Resources/lib/libRlapack.dylib

locale:
[1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
 [1] jsonlite_1.7.0  httr_1.4.2      stargazer_5.2.2 rdrobust_0.99.9 forcats_0.5.0   stringr_1.4.0   dplyr_1.0.5     purrr_0.3.4     readr_1.3.1    
[10] tidyr_1.1.3     tibble_3.0.3    ggplot2_3.3.2   tidyverse_1.3.0 foreign_0.8-80 

loaded via a namespace (and not attached):
 [1] nlme_3.1-152        fs_1.5.0            sf_0.9-8            xts_0.12.1          lubridate_1.7.9     gmodels_2.18.1      bsts_0.9.6         
 [8] tools_4.0.2         backports_1.1.9     R6_2.4.1            KernSmooth_2.23-17  spData_0.3.8        DBI_1.1.0           colorspace_1.4-1   
[15] raster_3.4-5        withr_2.2.0         sp_1.4-4            tidyselect_1.1.0    compiler_4.0.2      cli_2.0.2           rvest_0.3.6        
[22] expm_0.999-6        xml2_1.3.2          scales_1.1.1        classInt_0.4-3      digest_0.6.25       minqa_1.2.4         rmarkdown_2.3      
[29] Boom_0.9.7          pkgconfig_2.0.3     htmltools_0.5.0     lme4_1.1-23         dbplyr_1.4.4        rlang_0.4.10        readxl_1.3.1       
[36] rstudioapi_0.11     generics_0.0.2      zoo_1.8-8           gtools_3.8.2        spdep_1.1-7         magrittr_1.5        Matrix_1.2-18      
[43] Rcpp_1.0.5          munsell_0.5.0       fansi_0.4.1         lifecycle_1.0.0     CausalImpact_1.2.6  stringi_1.4.6       yaml_2.2.1         
[50] MASS_7.3-51.6       grid_4.0.2          blob_1.2.1          parallel_4.0.2      BoomSpikeSlab_1.2.4 gdata_2.18.0        crayon_1.3.4       
[57] deldir_0.2-10       lattice_0.20-41     haven_2.3.1         splines_4.0.2       hms_0.5.3           knitr_1.29          pillar_1.4.6       
[64] boot_1.3-25         codetools_0.2-16    LearnBayes_2.15.1   reprex_0.3.0        glue_1.4.2          evaluate_0.14       modelr_0.1.8       
[71] vctrs_0.3.7         nloptr_1.2.2.2      cellranger_1.1.0    gtable_0.3.0        assertthat_0.2.1    xfun_0.16           broom_0.7.1        
[78] e1071_1.7-3         coda_0.19-4         class_7.3-17        units_0.7-1         statmod_1.4.34      ellipsis_0.3.1