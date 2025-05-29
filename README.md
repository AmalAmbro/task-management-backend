# Task Management System – Django REST API

A secure, JWT-authenticated task manager built with Django and Django REST Framework. This system allows users to register, log in, and manage their tasks with full CRUD capabilities.

---

## Features

- User Registration & Login (JWT-based)
- Protected Task Routes (only authenticated users can access their own tasks)
- Task CRUD (Create, Read, Update, Delete)
- Filter by Status and Priority
- Pagination support
- CORS configuration for frontend (e.g., Vue, React)
- .env-based environment configuration

---

## 📁 Task Model Structure

Each task includes:

- `title`: Task title
- `description`: Task details
- `due_date`: Due date/time
- `priority`: Low / Medium / High
- `status`: Pending / In Progress / Completed

---

## ⚙️ Setup Instructions

run the setup file

sh setup.sh

This will:

    Create a Python virtual environment

    Activate it

    Install all dependencies from requirements.txt

    Create a .env file from .env.sample


## Run the server
Activate the virtual environment and run:

source env/bin/activate
python manage.py runserver

## API Endpoints

# Auth
Method	Endpoint	        Description
POST	/api/register/	    Register a new user
POST	/api/token/	        Get JWT access/refresh
POST	/api/token/refresh/	Refresh JWT token

# Tasks
Method	Endpoint	        Description
GET	    /api/tasks/	        List your tasks (paginated)
POST	/api/tasks/	        Create a new task
GET	    /api/tasks/<id>/	View task details
PUT	    /api/tasks/<id>/	Update task
DELETE	/api/tasks/<id>/	Delete task