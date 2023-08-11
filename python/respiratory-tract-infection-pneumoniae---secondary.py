# Rebecca M Joseph, Mohammad Movahedi, William G Dixon, Deborah P M Symmons, 2023.

import sys, csv, re

codes = [{"code":"115.9","system":"icd9"},{"code":"116","system":"icd9"},{"code":"116.1","system":"icd9"},{"code":"116.2","system":"icd9"},{"code":"116.3","system":"icd9"},{"code":"116.4","system":"icd9"},{"code":"116.5","system":"icd9"},{"code":"116.6","system":"icd9"},{"code":"182.8","system":"icd9"},{"code":"480","system":"icd9"},{"code":"480.2","system":"icd9"},{"code":"480.3","system":"icd9"},{"code":"480.8","system":"icd9"},{"code":"480.9","system":"icd9"},{"code":"482","system":"icd9"},{"code":"482.1","system":"icd9"},{"code":"482.4","system":"icd9"},{"code":"482.8","system":"icd9"},{"code":"482.9","system":"icd9"},{"code":"483","system":"icd9"},{"code":"483.1","system":"icd9"},{"code":"484.7","system":"icd9"},{"code":"484.8","system":"icd9"},{"code":"517","system":"icd9"},{"code":"730","system":"icd9"},{"code":"J12","system":"icd10"},{"code":"J12.0","system":"icd10"},{"code":"J12.8","system":"icd10"},{"code":"J15.0","system":"icd10"},{"code":"J15.1","system":"icd10"},{"code":"J15.2","system":"icd10"},{"code":"J15.5","system":"icd10"},{"code":"J16.0","system":"icd10"},{"code":"J17","system":"icd10"},{"code":"J17.1","system":"icd10"},{"code":"J17.2","system":"icd10"},{"code":"J17.3","system":"icd10"},{"code":"J17.8","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('respiratory-tract-infection-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["respiratory-tract-infection-pneumoniae---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["respiratory-tract-infection-pneumoniae---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["respiratory-tract-infection-pneumoniae---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
