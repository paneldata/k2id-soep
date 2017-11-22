clear
set more off

set maxvar 30000

local allfiles : dir "/home/soepdist/ddionrails/K2ID" files "*.dta"
foreach file in `allfiles' {
  use /home/soepdist/ddionrails/K2ID/`file', clear
  saveold temp/v1/en/`file', replace
}
