# Lab and Equipment Booking System

A lightweight, responsive web-based application designed to streamline laboratory scheduling, equipment inventory management, and role-based booking approvals for academic departments.

---

## ✨ Key Features

* **Role-Based Access Control (RBAC):** Tailored dashboards and permissions for **Students**, **Staff**, **Coordinators**, and **Admins**.
* **Live Inventory Sync:** Automatically checks, deducts, and restores equipment stock upon booking approval, completion, or cancellation.
* **Conflict & Priority Handling:** Allows department coordinators and staff to review overlapping requests and handle priority overrides with intelligent slot suggestions.
* **Real-Time Status Tracking:** Students can track their booking statuses (*Pending Approval*, *Approved*, *In Use*, *Completed*, *Cancelled*).
* **Modern Light UI:** Built with Bootstrap 5 and Bootstrap Icons, featuring a clean white aesthetic and smooth, reliable CSS keyframe animations optimized for all modern browsers (including Microsoft Edge).

---

## 🛠️ Tech Stack

* **Frontend:** HTML5, JavaScript (ES6+), Bootstrap 5, Bootstrap Icons
* **Backend & Database:** Supabase (PostgreSQL) via CDN
* **Hosting:** Netlify / GitHub Pages

---

## 📂 Project Structure

```text
├── index.html          # Entry / Redirect page (or login.html)
├── login.html          # Secure user authentication
├── register.html       # New account registration with role selection
├── dashboard.html      # Live overview stats and quick actions
├── book.html           # Resource reservation & scheduling panel (with timezones & rules)
├── my-bookings.html    # User booking history & cancellation stock recovery
├── staff.html          # Staff approval & inventory management panel
└── coordinator.html    # Coordinator high-priority review panel
