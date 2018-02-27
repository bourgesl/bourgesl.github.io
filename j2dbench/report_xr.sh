#!/bin/bash

mkdir -p xr_results/testcases/

java -cp J2DAnalyzer.jar j2dbench.report.XMLHTMLReporter -r xr_results -b xr_def_false_shm_true.res -t xr_def_true_shm_true.res

java -cp J2DAnalyzer.jar j2dbench.report.XMLHTMLReporter -r xr_results_shm -b xr_def_true_shm_false.res -t xr_def_true_shm_true.res

java -cp J2DAnalyzer.jar j2dbench.report.XMLHTMLReporter -r xr_results_tile -b xr_tile_55_true_shm_true.res -t xr_def_true_shm_true.res


java -cp J2DAnalyzer.jar j2dbench.report.XMLHTMLReporter -r xr_results_b -b xr_NO_55_true_shm_true.res -t xr_def_true_shm_true.res


