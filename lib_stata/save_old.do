clear
set more off

set maxvar 30000

local allfiles : dir "/home/soepdist/ddionrails/K2ID" files "*.dta"
foreach file in `allfiles' {
  use ../../data/twinlife/v2/en/`file', clear
  saveold temp/v2/en/`file', replace
}
