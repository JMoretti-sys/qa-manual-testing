# Sprint 6 – Logs and Database Testing (Taxi Application)

This project focuses on backend QA activities using **Linux log analysis** and **PostgreSQL database validation** for a taxi application.

---

## Part 1 – Console / Log Analysis

### Task 1 – Requests from a Specific IP Range

**Goal:**  
Identify all requests originating from IP addresses starting with `233.201.*`.

**Command used:**
```bash
grep -R '^233.201' ~/logs/2019/12
Sample results:

233.201.188.154 - - [18/12/2019:21:46:01 +0000] "DELETE /events HTTP/1.1" 403 3971
233.201.182.9   - - [21/12/2019:21:56:20 +0000] "PATCH /users HTTP/1.1" 400 4118
Task 2 – Log Separation by Error Code
Directory creation:
mkdir bug1
mkdir bug1/events
Extract logs with errors 400 and 500:
grep ' [45]00 ' ~/logs/2019/12/apache_2019-12-30.txt > ~/bug1/main.txt
Split logs by error type:
grep ' 400 ' ~/bug1/main.txt > ~/bug1/events/400.txt
grep ' 500 ' ~/bug1/main.txt > ~/bug1/events/500.txt
Results summary:
Total lines in 400.txt: 172

First 3 lines (400):

80.57.170.51 - - [30/12/2019:21:35:12 +0000] "DELETE /users HTTP/1.1" 400 3623
204.235.176.118 - - [30/12/2019:21:35:13 +0000] "POST /users HTTP/1.1" 400 4704
82.95.203.67 - - [30/12/2019:21:35:19 +0000] "DELETE /lists HTTP/1.1" 400 3737
Total lines in 500.txt: 156

First 3 lines (500):

64.250.112.189 - - [30/12/2019:21:35:13 +0000] "PUT /parsers HTTP/1.1" 500 4639
193.253.101.180 - - [30/12/2019:21:35:31 +0000] "PATCH /alerts HTTP/1.1" 500 2944
197.106.117.194 - - [30/12/2019:21:35:31 +0000] "PATCH /parsers HTTP/1.1" 500 3519
Part 2 – Database Testing (PostgreSQL)
Task 1 – Total Number of Cars
Result:
Total cars available: 5529

Query used:

SELECT COUNT(*) FROM cabs;
Task 2 – Companies with Fewer Than 100 Cars
Query used:

SELECT 
  COUNT(*) AS cnt, 
  company_name 
FROM cabs
GROUP BY company_name
HAVING COUNT(*) < 100
ORDER BY cnt DESC;
Result:
51 companies have fewer than 100 cars.

Task 3 – Weather Condition Classification
Query used:

SELECT 
  ts,
  CASE 
    WHEN description ILIKE '%rain%' OR description ILIKE '%storm%' 
    THEN 'Bad'
    ELSE 'Good'
  END AS weather_conditions
FROM weather_records
WHERE ts BETWEEN '2017-11-05 00:00:00' AND '2017-11-05 23:59:59';
Result:
Weather conditions were successfully classified as Good or Bad for the specified period.

Task 4 – Number of Trips per Taxi Company
Query used:

SELECT 
  c.company_name,
  COUNT(t.trip_id) AS trips_amount
FROM cabs c
JOIN trips t ON t.cab_id = c.cab_id
WHERE CAST(t.start_ts AS date) BETWEEN '2017-11-15' AND '2017-11-16'
GROUP BY c.company_name
ORDER BY trips_amount DESC;
Result:
Trip volumes per company were analyzed to identify potential inconsistencies.

Tools Used
Linux (SSH)

Bash commands (grep, wc, head, tail)

PostgreSQL

SQL (JOIN, GROUP BY, HAVING, CASE)

Conclusion
This project demonstrates the ability to investigate backend issues using logs and databases, supporting bug analysis and business validation.
---
