# Linux ETL Pipeline

A simple data engineering project using **Bash, AWK, Wget, Git, and Cron**.

## What This Project Does

This project contains two Bash scripts:

### 1. ETL Pipeline

The `etl.sh` script:

* Downloads the Annual Enterprise Survey 2023 CSV dataset.
* Saves the raw data in `raw/`.
* Uses AWK to select and rename columns.
* Saves the transformed data in `Transformed/`.
* Copies the final data into `Gold/`.

### 2. CSV and JSON File Management

The `move_files.sh` script:

* Searches the `source_files/` folder for CSV and JSON files.
* Moves the files into `json_and_CSV/`.
* Creates the destination folder if it does not already exist.
* Displays a message if no CSV or JSON files are found.

## Tools Used

* Bash
* AWK
* Wget
* Linux/macOS Terminal
* Git & GitHub
* Cron

## Project Structure

```text
linux-etl-pipeline/
├── raw/
├── Transformed/
├── Gold/
├── source_files/
├── json_and_CSV/
├── scripts/
│   ├── etl.sh
│   └── move_files.sh
└── .gitignore
```

## ETL Data Flow

```text
Stats NZ
   ↓
raw/
   ↓
Transformed/
   ↓
Gold/
```

## CSV and JSON File Flow

```text
source_files/
      ↓
move_files.sh
      ↓
json_and_CSV/
```

## Cron Schedule

The ETL script is scheduled to run every day at **12:00 AM**.

```text
0 0 * * *
```

## How to Run

### 1. Clone the Repository

```bash
git clone https://github.com/ZEEMIJI/linux-etl-pipeline.git
cd linux-etl-pipeline
```

### 2. Set the CSV URL

The ETL script uses the `CSV_URL` environment variable.

```bash
export CSV_URL="https://www.stats.govt.nz/assets/Uploads/Annual-enterprise-survey/Annual-enterprise-survey-2023-financial-year-provisional/Download-data/annual-enterprise-survey-2023-financial-year-provisional.csv"
```

### 3. Run the ETL Script

```bash
bash scripts/etl.sh
```

### 4. Run the CSV and JSON File-Moving Script
Place one or more .csv and/or .json files in the source_files/ folder, or edit the source path in the script to point to the folder you want to organise.

```bash
bash scripts/move_files.sh
```

The files will be moved into:

```text
json_and_CSV/
```

## Data Source

**Stats NZ — Annual Enterprise Survey 2023**

[Annual Enterprise Survey 2023 CSV](https://www.stats.govt.nz/assets/Uploads/Annual-enterprise-survey/Annual-enterprise-survey-2023-financial-year-provisional/Download-data/annual-enterprise-survey-2023-financial-year-provisional.csv)

## Learning Outcomes

This project provided practical experience with:

* Bash scripting
* AWK data transformation
* File management with `find` and `mv`
* Environment variables
* Cron scheduling
* Git and GitHub

---

Created as part of my **data engineering learning journey**.
