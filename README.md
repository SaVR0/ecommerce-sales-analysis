# 📊 Integrated E-Commerce Sales & Customer Analysis

This project demonstrates an end-to-end data analysis workflow for an e-commerce platform. It integrates relational database design and querying using **SQL** with data transformation, modeling, and interactive dashboard design in **Microsoft Excel**.

---

## 🖼️ Dashboard Preview

<img width="1837" height="802" alt="imagen_dashboard" src="https://github.com/user-attachments/assets/49d5ad45-8ddf-4aa1-9b56-5f3b35930c97" />


---

## 🎯 Project Objectives
* **Commercial Performance Evaluation:** Identify top-performing product categories by revenue.
* **Customer Segmentation:** Analyze average order value (AOV) and identify high-value customers (top spenders).
* **Temporal Trends:** Visualize monthly revenue progression to support strategic business decision-making.

---

## 🛠️ Tech Stack & Tools
* **SQL (DBeaver):** Relational database design, table joins (`JOIN`), aggregations (`GROUP BY`, `SUM`, `AVG`), and conditional filtering (`HAVING`).
* **Power Query (Excel):** Data extraction, UTF-8 encoding configuration, and data type validation from CSV exports.
* **Microsoft Excel:** Pivot tables, interactive Slicers, KPI metric cards, and dynamic chart formatting.

---

## 🚀 Step-by-Step Implementation

### 1. Extraction & Processing in SQL
* Designed `clientes` (customers) and `ventas` (sales) tables with primary and foreign key constraints.
* Executed a consolidated query calculating total transaction revenue:

```sql
SELECT 
    v.venta_id,
    v.fecha_venta,
    c.cliente_id,
    CONCAT(c.nombre, ' ', c.apellido) AS cliente,
    c.pais,
    v.categoria,
    v.producto,
    v.cantidad,
    v.precio_unitario,
    (v.cantidad * v.precio_unitario) AS total_venta
FROM ventas v
INNER JOIN clientes c ON v.cliente_id = c.cliente_id;
