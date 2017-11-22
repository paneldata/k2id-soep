rm -rf temp
mkdir -p temp/v1/en
stata-se -b lib_stata/save_old.do
Rscript lib_R/run_r2ddi.R
