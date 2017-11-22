import os, sys
import pandas as pd

sys.path.append(os.path.expanduser("~/github/ddi.py/"))

from ddi.onrails.repos import merge_instruments, dor1, copy, extract_variables, convert_r2ddi

def main():
    copy.f("study.md")
    #copy.f("datasets.csv")
    extract_variables.XmlParser(
        "r2ddi/v1/en",
        "k2id-soep",
        write_datasets=True,
    ).run()
    convert_r2ddi.Parser("k2id-soep", version="v1").write_json()

if __name__ == "__main__":
    main()
