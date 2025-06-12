# 🛒 Retail ETL & Data Warehouse Project | By Sagar Choudhury

Welcome to my **Retail Data Warehouse & Analytics Project**! 🚀  
This project showcases my hands-on work in building a data warehouse using SQL Server and following industry-standard Medallion architecture (Bronze, Silver, Gold). It is a complete portfolio project designed to demonstrate my data engineering, SQL, and analytics skills.

---

## 🧱 Architecture Overview

I used the **Medallion Architecture**:
- **🔹 Bronze Layer**: Raw staging from CSVs (ERP + CRM)
- **🔸 Silver Layer**: Cleaned and transformed data
- **🟡 Gold Layer**: Final star schema for analysis

Architecture diagrams are available in the `docs/` folder.

---

## 📦 Data Sources

- `ERP_Sales.csv`: Product, transactions
- `CRM_Customers.csv`: Customer info, regions

Found in the `datasets/` directory.

---

## 🧩 Project Workflow

| Stage         | Description |
|---------------|-------------|
| 📥 Bronze      | Extract raw data into SQL Server |
| 🧼 Silver      | Transform & clean data (joins, filters, business rules) |
| 📊 Gold        | Create star schema (fact/dimension tables) |
| 📈 Reports     | Analytical queries + dashboards (Power BI - optional) |

---

## 🎯 Project Goals

- Design a scalable warehouse using SQL Server
- Practice SQL-based ETL development
- Build star schema from transactional data
- Analyze and report business KPIs
- Document architecture and logic clearly

---

## 🛠️ Tech Stack

| Tool/Platform    | Purpose                          |
|------------------|-----------------------------------|
| SQL Server Express | Data storage and processing |
| SSMS              | SQL development |
| Draw.io           | Architecture diagrams |
| GitHub            | Code version control |
| Notion            | Project planning |
| Power BI (optional) | Dashboarding |

---

## 📁 Folder Structure

