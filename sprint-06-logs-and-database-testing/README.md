# Sprint 6 – Logs and Database Testing (Taxi App)

This project focuses on backend testing activities using **server logs** and a **PostgreSQL database** for a taxi application.

The goal of this sprint is to validate system behavior through log analysis and data verification, supporting bug investigation and business validation.

---

## Scope

### Console / Logs
- Search requests from a specific IP range
- Filter logs by date
- Separate log records based on HTTP error codes (400 and 500)
- Create directories and files on a remote Linux server

### Database (PostgreSQL)
- Validate the number of available taxis
- Analyze data grouped by taxi company
- Identify companies with insufficient vehicles
- Validate weather-based business rules using conditional logic
- Verify ride volume inconsistencies using aggregated data

---

## Tasks Performed

### Task 1 – Log Filtering by IP
- Identified requests originating from IPs starting with `233.201.*`
- Used command-line tools to extract matching log entries

### Task 2 – Log Separation by Error Code
- Created directory structure for bug investigation
- Saved logs from a specific date into a main file
- Split log entries into separate files based on HTTP status codes (400 and 500)

### Task 3 – Database Validation (Taxi Availability)
- Counted total number of taxis available in the system
- Grouped taxis by company
- Identified companies with fewer than 100 vehicles

### Task 4 – Weather Condition Classification
- Classified weather conditions as **Good** or **Bad** using SQL CASE
- Validated weather data for a specific date range

### Task 5 – Ride Volume Analysis
- Analyzed number of trips per taxi company
- Compared ride counts across specific dates
- Identified potential data inconsistencies

---

## Tools Used

- Linux Terminal (SSH)
- PostgreSQL
- SQL (JOIN, GROUP BY, HAVING, CASE)
- Google Docs (test report template)

---

## Result

Log data and database records were successfully analyzed to support bug investigation and business validation.

All tasks were completed according to the project requirements.
---
