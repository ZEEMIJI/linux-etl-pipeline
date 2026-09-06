# Linux ETL Pipeline

A simple data engineering project using **Bash, Linux, and Git**.

## What this project does

This project demonstrates a basic ETL (Extract, Transform, Load) pipeline using Bash.

* **Extract:** Downloads an Annual Enterprise Survey CSV dataset.
* **Transform:** Selects the required columns and renames them.
* **Load:** Saves the transformed data into a Gold folder.
* **Automation:** Uses a cron job to run the ETL script every day at **12:00 AM**.

## Tools Used

* Bash
* Linux/macOS Terminal
* AWK
* Wget
* Git & GitHub
* Cron

## Project Structure

```text
linux-etl-pipeline/
├── raw/
├── Transformed/
├── Gold/
├── scripts/
│   └── etl.sh
└── .gitignore
```

## Cron Schedule

The ETL script is scheduled to run every day at midnight:

```text
0 0 * * *
```


## Data Source

The CSV dataset used in this project is from Stats NZ.

**CSV Download:**
[Download the Annual Enterprise Survey 2023 CSV](https://www.stats.govt.nz/assets/Uploads/Annual-enterprise-survey/Annual-enterprise-survey-2023-financial-year-provisional/Download-data/annual-enterprise-survey-2023-financial-year-provisional.csv)

## How to Run
From the project directory, run:

bash scripts/etl.sh

This project was created as part of my data engineering learning journey.
