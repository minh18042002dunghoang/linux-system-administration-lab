# Process Text Streams Using Filters

## Overview

This task demonstrates the use of Linux text-processing utilities to analyze web server access logs.

The objective is to extract useful information from log files using standard Unix filters such as grep, awk, sort, uniq, wc, and head.

---

## Dataset

A sample web access log was created:

```bash
access.log
```

The log contains HTTP requests, status codes, URIs, and client IP addresses.

---

## Tasks Performed

### Extract HTTP 404 Errors

Generated:

Using:

```bash
grep ' 404 ' access.log
```

### Top 5 Client IP Addresses

Generated:

Using awk, sort, uniq, and head.
awk '{print $1}' access.log | sort | uniq -c | sort -nr | head -5
### URI Access Statistics

Generated:
--bash
awk '{print $7}' access.log | sort | uniq -c | sort -nr


This report shows the number of requests for each URI sorted in descending order.

---


The report contains:

* Total log entries
* Unique IP addresses
* Most requested URI
* Number of HTTP 404 errors
* Number of HTTP 500 errors
* Top 3 requested URIs

---

## Skills Demonstrated

* Text stream processing
* Log analysis
* awk
* grep
* sort
* uniq
* wc
* Linux shell pipelines

---

## Result

Successfully processed and analyzed web server logs using standard GNU/Linux command-line tools. The generated reports provide useful operational insights into user activity and server errors.

