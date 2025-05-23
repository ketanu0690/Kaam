# Kaam Project Plan

## 1. Overview
**Project Name:** Kaam  
**Technology Stack:**  
- **Frontend:** Next.js (React)  
- **Backend:** .NET with FastEndpoints  
- **Database:** PostgreSQL (Free-tier options available)  
- **Cloud:** AWS Free Tier (EC2, Lambda, RDS, S3)  
- **Containerization:** Docker (Using Docker Compose)  
- **CI/CD:** GitHub Actions (Free-tier)  
- **Version Control:** Git (GitHub/GitLab/Bitbucket)  
- **Authentication:** JWT & Three-legged OAuth (Auth0 Free Plan / Firebase Auth)  
- **Monitoring & Logging:** Prometheus + Grafana (Self-hosted)  

## 2. Folder Structure
```
/kaam
 ├── /app
 │   ├── /api (API Endpoints)
 │   ├── /components (UI Components)
 │   ├── /features (Feature-based structure)
 │   ├── /pages (Next.js Pages)
 │   ├── /services (API Calls)
 │   ├── /shared (Reusable Modules)
 │   ├── /styles (CSS/SCSS/Tailwind)
 │   ├── /types (TypeScript Interfaces)
 │   ├── /utils (Helper Functions)
 │
 ├── /backend
 │   ├── /Controllers (FastEndpoints APIs)
 │   ├── /Models (C# Models)
 │   ├── /Services (Business Logic)
 │   ├── /Data (DB Context & Repositories)
 │   ├── /Migrations (EF Migrations)
 │
 ├── /infrastructure
 │   ├── /docker (Docker Configuration)
 │   ├── /ci-cd (GitHub Actions / Terraform / Scripts)
 │
 ├── /docs (Project Documentation)
 ├── docker-compose.yml
 ├── README.md
```

## 3. Free Resource Utilization Plan
### **1. Hosting & Infrastructure (AWS Free Tier)**
- **Frontend:** Host on **Vercel Free Plan** (or AWS Amplify)
- **Backend:** Host on **AWS Lambda** (for serverless) or **EC2 Free-tier**
- **Database:** **AWS RDS Free-tier** (PostgreSQL/MySQL) or use **Supabase Free Plan**
- **Storage:** **AWS S3 Free-tier** (for file storage)
- **Authentication:** Use **Auth0 Free Plan** or **Firebase Auth**
- **Monitoring & Logging:** Use **AWS CloudWatch Free-tier** or **self-hosted Prometheus/Grafana**

### **2. CI/CD (Free Solutions)**
- **GitHub Actions (Free CI/CD Pipeline)**
- **Docker Hub (Free Private Repositories)**
- **Terraform (Infrastructure as Code for Free-tier AWS)**

## 4. Workflow & Development Approach
### **1. Agile Stories & Phases**

### **Phase 1: MVP (2-3 Weeks)**
- **User Authentication (JWT/Auth0/Firebase + Three-legged OAuth)**
- **Basic UI Setup (Tailwind + Next.js)**
- **Backend API (CRUD Operations)**
- **Database Setup (PostgreSQL)**
- **Dockerizing the Application**
- **Deployment on AWS Free-tier**

### **Phase 2: Core Features (3-4 Weeks)**
- **User Roles & Permissions**
- **Job Posting & Application System**
- **Resume Builder & Editor**
- **Resume Templates & Selection**
- **Realtime Chat (WebSockets/AWS AppSync)**
- **Payment Integration (Stripe Free-tier Sandbox)**

### **Phase 3: Optimization & Scaling (4 Weeks)**
- **Caching Mechanism (Redis Free-tier)**
- **Performance Monitoring (New Relic Free-tier/AWS CloudWatch)**
- **SEO Optimization & Analytics (Google Analytics)**
- **Auto-scaling with AWS Lambda + API Gateway**
- **CI/CD Automation with Jenkins & GitHub Actions**

## 5. Database Model (Basic Structure)
```
User Table
----------------
id (PK)
name
email
password (hashed)
role (enum: Admin, Employer, Job Seeker)
created_at

token (Three-legged OAuth tokens)

description
----------------
User tokens stored for OAuth authentication

Job Table
----------------
id (PK)
title
description
company_id (FK -> Company)
created_at

Company Table
----------------
id (PK)
name
email
website
created_at

Applications Table
----------------
id (PK)
user_id (FK -> User)
job_id (FK -> Job)
status (enum: Applied, Interview, Hired, Rejected)
created_at

Resume Table
----------------
id (PK)
user_id (FK -> User)
template_id (FK -> ResumeTemplates)
content (JSON for flexibility)
created_at

ResumeTemplates Table
----------------
id (PK)
name
description
default_content
created_at
```

## 6. Security & Best Practices
- **Environment Variables**: Store API keys & credentials securely
- **HTTPS Everywhere**: Use AWS Certificate Manager for SSL
- **JWT Authentication**: Secure API with access & refresh tokens
- **Three-legged OAuth**: Secure third-party logins (Google, LinkedIn, etc.)
- **Role-based Access Control (RBAC)**: Restrict API access based on roles
- **CI/CD Security**: Use GitHub Secrets for sensitive information

## 7. GitHub Issues Workflow
To track and manage user stories efficiently, GitHub Issues will be used:
- **Create Issues for Each Feature/User Story**
- **Use Labels** (`MVP`, `feature`, `bug`, `enhancement`, etc.)
- **Assign Milestones** (e.g., `MVP`, `Phase 2 Features`)
- **Use Projects (Kanban Board)** for better tracking
- **Automatically Assign Issues** based on labels using GitHub Actions

### **User Story Issue Template**
```
**Title:** User Registration Flow

**Description:**
As a [Job Seeker / Employer / Admin], I want to register an account so that I can access the platform and its features.

**Acceptance Criteria:**
- A user can register using email and password.
- Password should be hashed before storing in DB.
- Email verification should be required.
- API endpoint: `POST /api/auth/register`
- Returns `201 Created` on success.

**Additional Notes:**
- Use Firebase/Auth0 for authentication.
- Store user details in the `User` table.

**Labels:** `MVP`, `authentication`, `backend`, `frontend`
```

## 8. Additional User Stories
- **Three-legged Authentication Integration**: Allow login with Google, LinkedIn, and GitHub.
- **Resume Builder & Editor Enhancements**: Enable AI-powered suggestions and real-time editing.
- **Template Selection & Optimization**: Suggest best resume templates based on user data.
- **AWS Deployment Enhancements**: Automate multi-region setup.
- **CI/CD Pipeline Improvements**: Implement Canary deployments with Jenkins.
- **Job Recommendation System**: AI-based job matching for users.
- **Admin Dashboard Enhancements**: Add analytics and reporting.

## 9. Conclusion
This document serves as a guide for the **Kaam Project**, providing a structured approach for efficient development while utilizing free-tier services. The project will follow **Agile methodology**, with clear phases and goals for smooth execution.

---
Let me know if you need modifications! 🚀
