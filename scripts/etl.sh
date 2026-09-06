
#!/bin/bash

#EXTRACT DATA AND SAVE TO RAW FOLDER

mkdir -p raw

wget -O raw/annual-enterprise-survey-2023.csv "$CSV_URL"

if [ -s raw/annual-enterprise-survey-2023.csv ]; then
	echo "file downloaded"
else 
	echo "File not downloaded or file is empty"
fi

#TRANSFORM DATA, RENAMING COLUMNS AND SAVE TO A NEW FILE

mkdir -p Transformed

awk -F',' '

NR==1 {

        for (i=1; i<=NF; i++) {

                if ($i=="Year") year=i
                if ($i=="Units") units=i
                if ($i=="Variable_code") variable_code=i
                if ($i=="Value") value=i

        }

        print "year,Value,Units,variable_code"
        next
}

{
        print $year "," $value "," $units "," $variable_code
}

' raw/annual-enterprise-survey-2023.csv > Transformed/2023_year_finance.csv

if [ -s Transformed/2023_year_finance.csv ]; then
        echo "transformed file loaded"
else
        echo "transformed file not loaded or file is empty"
fi

#LOAD INTO GOLD FOLDER

mkdir -p Gold

cp Transformed/2023_year_finance.csv  Gold/2023_year_finance.csv

if [ -s Gold/2023_year_finance.csv ]; then
        echo "file loaded into Gold"
else
        echo "file not loaded into Gold or file is empty"
fi
