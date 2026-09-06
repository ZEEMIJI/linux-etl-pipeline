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


## How to Run

### 1. Clone the repository

```bash
git clone https://github.com/ZEEMIJI/linux-etl-pipeline.git
cd linux-etl-pipeline
```

### 2. Set the CSV URL as an environment variable

The ETL script uses the `CSV_URL` environment variable to locate the source dataset.

Copy the CSV download URL from the **Data Source** section below and set it in your terminal:

```bash
export CSV_URL="PASTE-THE-CSV-URL-HERE"
```

### 3. Run the ETL script

```bash
bash scripts/etl.sh
```

The script will:

* Download the raw CSV into the `raw` folder
* Transform the required columns
* Save the transformed data into the `Transformed` folder
* Copy the transformed file into the `Gold` folder

## Data Source

The dataset used in this project is the Annual Enterprise Survey 2023 from Stats NZ.

**CSV Download:**

[Annual Enterprise Survey 2023 CSV](PASTE-THE-CSV-URL-HERE)


This project was created as part of my data engineering learning journey.
