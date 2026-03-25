# SPIMS-APP-Salesforce
**Student Placement &amp; Internship Management System (SPIMS)** is a Salesforce-based application that streamlines student registration, job postings, and application tracking. It automates eligibility checks, status updates, and notifications while providing reports and dashboards for placement insights and decision-making.


# 🎓 Student Placement & Internship Management System (SPIMS)

## 📌 Project Overview

The **Student Placement & Internship Management System (SPIMS)** is a Salesforce-based application designed to manage the complete placement lifecycle for colleges and training institutes.
It replaces manual processes with a centralized, automated system for managing students, job postings, applications, and hiring outcomes.

---

## 🚀 Features

### 👨‍🎓 Student Module

* Student registration & profile management
* Apply for internships and jobs
* Track application status

### 🏢 Company & Job Management

* Manage recruiting companies
* Create job/internship postings
* Link jobs with placement drives

### 📄 Application Tracking

* Track status:
  `Applied → Shortlisted → Interview → Selected / Rejected`

### ⚙️ Automation (Flow + Apex)

* Eligibility check based on CGPA
* Automatic status updates
* Email notifications on status change

### 📊 Reports & Dashboard

* Applications by status
* Students placed by batch
* Company-wise hiring
* Placement success rate dashboard

---

## 🧱 Data Model

### Standard Objects

* **Account** → Company
* **Contact** → Recruiter

### Custom Objects

* **Student_Request__c** → Student details
* **Job_Posting__c** → Job opportunities
* **Job_Application__c** → Applications
* **Placement_Drive__c** → Hiring drives

---

## 🔗 Relationships

* Student → Job Application (1:N)
* Job Posting → Job Application (1:N)
* Placement Drive → Job Posting (1:N)

---

## 🔐 Security

* Role hierarchy: Admin → Student → Recruiter
* Permission sets for access control
* Field-level security (CGPA hidden from recruiter)
* Sharing rules for record visibility

---

## ⚙️ Automation Details

### 🔄 Flow

* Record-triggered flow on Job Application
* Eligibility check (CGPA vs required CGPA)
* Status update (Applied / Rejected)
* Email alerts for:

  * Shortlisted
  * Selected
  * Rejected

### 💻 Apex

* Trigger to prevent duplicate applications
* Bulk-safe eligibility validation
* Invocable method for Flow integration

---

## 💡 Lightning Web Components (LWC)

* `studentRegistrationForm`
* `jobListingComponent`
* `applicationStatusTracker`
* `adminDashboard`

---

## 🧪 Testing & Coverage

* Apex test classes implemented
* Duplicate prevention tested
* Eligibility logic validated
* Achieved **≥ 75% code coverage**

---

## 📊 Dashboard Components

* Placement Success Rate
* Active Placement Drives
* Top Recruiters

---

## 🛠️ Tools & Technologies

* Salesforce Lightning Platform
* Apex
* Lightning Web Components (LWC)
* Flow Builder
* Reports & Dashboards

---

## 📈 Outcome

This project demonstrates real-world Salesforce development skills including:

* Data modeling
* Automation
* UI development
* Security implementation
* Reporting & analytics

---

## 👨‍💻 Author

**Neeladri Yogendra (Yogi)**

* Full Stack Developer | Salesforce Developer
* GitHub: https://github.com/YogendraNeeladri

---

## ⭐ Conclusion

SPIMS provides a scalable and efficient solution for managing placement activities, improving transparency, automation, and decision-making in educational institutions.
