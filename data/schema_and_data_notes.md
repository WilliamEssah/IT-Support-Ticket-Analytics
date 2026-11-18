# Dataset & MySQL Schema Documentation

## Source Dataset Overview
* **Dataset:** IT Support Ticket Logs (`itsupportdata`)
* **Total Cleaned Records:** 25,222 tickets
* **Storage:** Loaded into local MySQL Server 8.0 database schema (`wessahdb`)

## MySQL Table Definition (`support_tickets`)

```sql
CREATE TABLE support_tickets (
    ticket_id INT AUTO_INCREMENT PRIMARY KEY,
    subject VARCHAR(255),
    body TEXT,
    department VARCHAR(100),
    priority VARCHAR(50),
    language VARCHAR(20),
    tags VARCHAR(255));