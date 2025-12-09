# Final Project: T-SQL Query Performance Improvement

## Overview
This project aims to apply the concepts learned throughout the course on T-SQL querying and performance optimization. Students will analyze and improve the performance of SQL queries using the AdventureWorks database. The project involves implementing best practices for query writing, indexing, and the use of performance tools.

## Objectives
- Understand query performance and optimization concepts.
- Analyze existing queries for performance issues.
- Implement improvements based on best practices learned in the course.
- Utilize SQL Server's performance diagnostic tools.

## Project Steps

### 1. Query Analysis
- Select a set of queries from the AdventureWorks database that are known to perform poorly (e.g., long execution times, high resource usage).
- Use tools such as the Query Execution Plan to identify bottlenecks and inefficiencies in the selected queries.

### 2. Performance Metrics
- Record the execution time and resource usage of each query before making any changes.
- Example SQL:
  ```sql
  SET STATISTICS IO ON;
  SET STATISTICS TIME ON;
  -- Your query here
  ```

### 3. Implement Improvements
- Apply at least three specific optimizations based on course content, which may include:
  - Rewriting queries to avoid anti-patterns (e.g., avoid SELECT *).
  - Adding appropriate indexes to improve data retrieval performance.
  - Using query hints to influence execution plans when necessary.
  
  Example of adding an index:
  ```sql
  CREATE INDEX IX_Product_Name ON Production.Product(Name);
  ```

### 4. Re-Evaluation
- Rerun the modified queries and document the execution time and resource usage.
- Compare the new performance metrics against the original metrics to evaluate the effectiveness of the changes made.

### 5. Reporting
- Prepare a report summarizing:
  - The initial analysis and metrics of the selected queries.
  - The changes made to optimize the queries.
  - The results of the re-evaluation, including performance improvements.
  - Key learnings and reflections on the optimization process.

## Deliverables
- SQL scripts for both the original and optimized queries.
- A detailed report (5-7 pages) that includes:
  - Performance metrics before and after optimization.
  - Analysis of query execution plans.
  - Discussion of the best practices applied.

## Submission Guidelines
- Submit all files in a single zip folder.
- Ensure that SQL scripts are properly commented.
- Reports should be formatted professionally, with proper citations for any references.

## Tools and Resources
- [AdventureWorks Sample Database](https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks)
- SQL Server Management Studio (SSMS)
- Performance tuning tools such as Query Store and Dynamic Management Views (DMVs).

--- 
This project encourages practical application of T-SQL optimization techniques learned in this course, equipping students with the skills required to enhance query performance in real-world scenarios.