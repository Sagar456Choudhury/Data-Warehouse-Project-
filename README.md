# 🛒 Retail ETL & Data Warehouse Project | By Sagar Choudhury

Welcome to my **Retail Data Warehouse & Analytics Project**! 🚀  
This project is a hands-on demonstration of designing and building a modern data warehouse using SQL Server and industry best practices. It focuses on ingesting raw data, transforming it using ETL pipelines, modeling it into a star schema, and analyzing business trends.

> ⚡ Built entirely from scratch as part of my learning journey and portfolio.

---

## 🧱 Architecture Overview

I implemented the **Medallion Architecture** to structure and optimize the data processing workflow:

### 🔹 Bronze Layer
- Stores raw data from CSV files (ERP & CRM)
- No transformation done here — just staging

### 🔸 Silver Layer
- Data is cleansed, transformed, and standardized
- Joins ERP and CRM data, applies business rules

### 🟡 Gold Layer
- Final analytical tables (Star Schema: Fact & Dimension)
- Used for business intelligence and reporting

📌 Diagrams and workflows are stored in the `docs/` folder  
📊 (Designed using **draw.io**)

---

## 📦 Data Sources

I used two mock datasets for simulation:

- `ERP_Sales.csv`: Product and transaction-level data
- `CRM_Customers.csv`: Customer demographics and engagement

These are available in the `datasets/` folder.

---

## 🎯 Project Objectives

This project aims to:

- Practice **SQL-based ETL** development
- Build and understand the **Medallion architecture**
- Develop a **Star Schema** optimized for reporting
- Write **analytical SQL queries** to extract insights
- Optionally visualize the data using **Power BI**

---

## 🛠️ Tools & Technologies Used

| Tool         | Purpose                                |
|--------------|-----------------------------------------|
| SQL Server   | Database & ETL layer                    |
| SSMS         | SQL development environment             |
| Draw.io      | Data architecture & flow diagrams       |
| Notion       | Project tracking & planning             |
| GitHub       | Version control and collaboration       |
| Power BI     | (Optional) Data visualization & insights |

---

## 🗂️ Repository Structure

```bash
retail-etl-warehouse/
│
├── datasets/                 # Raw CSV files (ERP, CRM)
│
├── docs/                     # Drawings and documentation
│   ├── data_architecture.drawio
│   ├── data_flow.drawio
│   ├── data_models.drawio
│   ├── data_catalog.md
│   └── naming-conventions.md
│
├── scripts/                  # SQL ETL Scripts
│   ├── bronze/
│   ├── silver/
│   └── gold/
│
├── notebooks/                # (Optional) Jupyter Notebooks for ETL logic
│
├── reports/                  # Power BI dashboards (optional)
│
├── README.md                 # You're here!
└── .gitignore



---

## 📊 Insights Delivered

Queries were written to derive insights on:

- 🛍️ Product performance
- 📍 Sales by region/month
- 👥 Customer behavior and segments
- 🔄 Repeat and top customers

Scripts stored in `scripts/gold/`.

---

## 📚 What I Learned

This project helped me develop and strengthen my understanding of:

- Data warehouse architecture & design
- Medallion layered data approach
- SQL-based ETL pipelines
- Star schema modeling (Fact & Dimension)
- Data storytelling and analytics

---

## 🧾 License

This project is licensed under the **MIT License**.

You're free to use, share, and modify the code, but please give credit.  
See the [`LICENSE`](LICENSE) file for full details.


---

## 🌐 Connect with Me

I'm open to collaboration, job opportunities, and feedback!  
Let’s connect and grow together:

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=flat-square&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/sagar-choudhury)  
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=flat-square&logo=github&logoColor=white)](https://github.com/SagarChoudhury)  
📧 Email: **sagar.choudhury@example.com**

---

## 💡 Inspired By

Thanks to [Data With Baraa](https://github.com/DataWithBaraa/sql-data-warehouse-project) for the open-source learning content that inspired the initial architecture and structure.

> This version is my own interpretation, logic, and workflow implementation. Fully customized.

---

## ☕ Support My Work

If this project helped you or if you'd like to support my journey:

> ⭐ Star this repo  
> 🔁 Share it  
> 💬 Connect with me  
> ☕ Or buy me a coffee (coming soon)

---

> Built with ❤️ and curiosity by **Sagar Choudhury**
