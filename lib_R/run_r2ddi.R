library("r2ddi")

dir2xml(
  path_in = "/home/soepdist/ddionrails/K2ID",
  path_out = "r2ddi/v1/en/",
  missing_codes=-9:-1, 
  my_cores=30)
