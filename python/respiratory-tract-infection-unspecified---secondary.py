# Rebecca M Joseph, Mohammad Movahedi, William G Dixon, Deborah P M Symmons, 2023.

import sys, csv, re

codes = [{"code":"100","system":"icd9"},{"code":"101","system":"icd9"},{"code":"109","system":"icd9"},{"code":"109.1","system":"icd9"},{"code":"109.2","system":"icd9"},{"code":"109.3","system":"icd9"},{"code":"109.4","system":"icd9"},{"code":"109.5","system":"icd9"},{"code":"110","system":"icd9"},{"code":"111","system":"icd9"},{"code":"112","system":"icd9"},{"code":"113","system":"icd9"},{"code":"114","system":"icd9"},{"code":"115","system":"icd9"},{"code":"117","system":"icd9"},{"code":"119","system":"icd9"},{"code":"119.1","system":"icd9"},{"code":"119.2","system":"icd9"},{"code":"119.3","system":"icd9"},{"code":"119.4","system":"icd9"},{"code":"119.5","system":"icd9"},{"code":"120","system":"icd9"},{"code":"121","system":"icd9"},{"code":"123","system":"icd9"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('respiratory-tract-infection-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["respiratory-tract-infection-unspecified---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["respiratory-tract-infection-unspecified---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["respiratory-tract-infection-unspecified---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
