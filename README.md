# Google Reviews System

A full-stack application for managing and tracking Google reviews performance across multiple brands, branches, and employees.

## Features

- **Daily Reviews Tracking**: Record morning and evening shift reviews
- **Multi-brand Management**: Support for multiple brands with custom logos
- **Branch & Employee Management**: Organize by branches and employees
- **Advanced Reporting**: Visual charts and analytics
- **Data Export**: PDF and image exports
- **Arabic RTL Support**: Fully localized Arabic interface

## Tech Stack

- **Frontend**: React + Vite + Tailwind CSS + Framer Motion
- **Backend**: Node.js + Express + MongoDB + Mongoose
- **Authentication**: JWT tokens
- **File Uploads**: Multer for logo management

## Quick Start

### Prerequisites
- Node.js 16+
- MongoDB (local or Atlas)
- Windows PowerShell (run as Administrator)

### Installation

1. Run the setup script as Administrator:
```powershell
.\setup-windows.ps1
The script will:

Create all project files

Install dependencies

Seed the database with admin user

Start backend and frontend

Default Credentials
Username: admin

Password: admin

Development URLs
Frontend: http://localhost:3000

Backend: http://localhost:5000

Project Structure
text
google-reviews-system/
├── backend/          # Node.js API server
├── frontend/         # React application
├── setup-windows.ps1 # Setup script
└── README.md         # This file
API Documentation
Authentication
POST /api/auth/login - User login

Brands
GET /api/brands - List brands

POST /api/brands - Create brand (with logo upload)

PUT /api/brands/:id - Update brand

DELETE /api/brands/:id - Delete brand

Daily Entries
POST /api/daily - Bulk save daily entries

GET /api/daily?date=YYYY-MM-DD - Get daily entries

Reports
GET /api/reports/brand - Brand performance report

GET /api/reports/employee - Employee performance report

Security Notes
Change default JWT_SECRET in production

Use strong passwords for admin users

Configure MongoDB authentication

Set up proper CORS for production domains

Production Deployment
Set environment variables:

MONGO_URI: MongoDB connection string

JWT_SECRET: Strong random secret

NODE_ENV: production

Build frontend:

bash
cd frontend
npm run build
Start backend:

bash
cd backend
npm start
Support
For issues and questions, please contact the development team.