# Public Health Clinic Records System 🏥

A robust, high-integrity relational database application engineered to digitalize decentralized public medical records and optimize regional healthcare workflows in Sierra Leone.

## 🌟 Sustainable Development Goals (SDG) Alignment
This project aligns directly with **UN Sustainable Development Goal 3 (SDG 3: Good Health and Well-being)**. By transitioning manual, paper-based operations in regional clinics into an optimized relational model, this system actively addresses challenges like:
* **Data Fragmentation:** Replaces manual record binders with real-time transactional pathways.
* **Administrative Bottlenecks:** Lowers patient lookup and record retrieval times significantly.
* **Audit Integrity:** Provides precise financial auditing via structured database schemas and constraints.

---

## 🏛️ System Architecture & Schema Layout

The relational schema comprises six core normalized tables structured to enforce strict data compliance and minimize redundant record states:

1.  **`patients`:** Contains unique demographic identities and foundational metadata. 
2.  **`doctors`:** Maps medical staff personnel directly to their designated clinical departments.
3.  **`medications`:** Governs clinical stock quantities and tracks financial valuation metrics using high-precision `DECIMAL(10,2)` types.
4.  **`appointments`:** The central relational pivot point joining patient transactions smoothly to explicit medical specialists.
5.  **`prescriptions` Catchment:** Tracks medication instructions and dosages administered during specific consultation intervals.
6.  **`treatments`:** Records individual clinical processing actions and manages financial invoicing totals using secure constraints.

---

## 🔒 Security & Role-Based Access Control (RBAC)

To safeguard sensitive clinical records against administrative exploits or unauthorized mutations, the environment implements a robust **Least Privilege** authorization protocol with three separate user profiles:

```sql
-- Role 1: Full Database Administrator (DBA Control)
CREATE USER 'yusufu_jabbie'@'localhost' IDENTIFIED BY 'Password123!';
GRANT ALL PRIVILEGES ON publichealthclinic.* TO 'yusufu_jabbie'@'localhost';

-- Role 2: Data Entry Clerk (Restricted Write Control)
CREATE USER 'isata_kamara'@'localhost' IDENTIFIED BY 'IsataClinic2026!';
GRANT SELECT, INSERT, UPDATE ON publichealthclinic.* TO 'isata_kamara'@'localhost';

-- Role 3: Internal Reporting/Auditor (Read-Only Control)
CREATE USER 'john_Taylorkamara'@'localhost' IDENTIFIED BY 'JohnClinic2026!';
GRANT SELECT ON publichealthclinic.* TO 'john_Taylorkamara'@'localhost';

-- Flush privilege cache to instantly deploy changes
FLUSH PRIVILEGES;
