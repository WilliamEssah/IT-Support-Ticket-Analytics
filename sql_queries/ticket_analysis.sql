-- ============================================================================
-- IT Support Ticket Operational Analytics
-- Database: wessahdb | Table: support_tickets (25,222 records)
-- ============================================================================

USE wessahdb;

-- 1. Total Ticket Volume Overview
SELECT 
    COUNT(*) AS total_tickets
FROM support_tickets;

-- 2. Departmental Workload Distribution
SELECT 
    department,
    COUNT(*) AS ticket_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM support_tickets), 2) AS percentage_of_total
FROM support_tickets
GROUP BY department
ORDER BY ticket_count DESC;

-- 3. Priority Level Urgency Breakdown
SELECT 
    priority,
    COUNT(*) AS ticket_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM support_tickets), 2) AS percentage_of_total
FROM support_tickets
GROUP BY priority
ORDER BY ticket_count DESC;

-- 4. Top 10 Recurring Root-Cause & Tag Clusters
SELECT 
    tags,
    COUNT(*) AS cluster_frequency
FROM support_tickets
GROUP BY tags
ORDER BY cluster_frequency DESC
LIMIT 10;

-- 5. High-Priority Workload by Department
SELECT 
    department,
    COUNT(*) AS high_priority_tickets
FROM support_tickets
WHERE priority = 'High'
GROUP BY department
ORDER BY high_priority_tickets DESC;