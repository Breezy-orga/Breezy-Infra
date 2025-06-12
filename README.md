# Breezy Infrastructure

This repository contains the infrastructure configuration for the Breezy project, including Docker setup and deployment scripts.

---

## Project Overview

**Breezy** is a lightweight, mobile-first social media application inspired by Twitter/X. It is designed to provide a fast and fluid user experience even on low-resource devices, with a focus on simplicity, performance, and accessibility.

The application allows users to:
- Create an account and securely authenticate
- Post short messages (up to 280 characters)
- Like and comment on posts
- Follow other users and view a personalized news feed

---

## Stack and Architecture

### Back-end (Node.js & Express)
- RESTful API (JWT, CORS, centralized error handling)
- MongoDB with Mongoose
- Stateless authentication with JSON Web Tokens

### Front-end (React + Next.js)
- Mobile-first responsive UI (Tailwind CSS)
- Routing via React Router / Next.js
- API communication via Axios

### Infrastructure
- Containerization with Docker
- Orchestration via `docker-compose`
- MongoDB for data persistence

### Architecture Diagram
```
[Frontend (Next.js)]
       ↓
[API Gateway (Express)]
       ↓
     [MongoDB]
```

---

## Core Features

| Feature                            | Description |
|------------------------------------|-------------|
| Fx1 – User registration            | Account creation with validation |
| Fx2 – Secure login (JWT)           | Stateless login system |
| Fx3 – Short message posting        | Limit of 280 characters |
| Fx4/Fx10-11 – User profile         | Bio, avatar, published posts |
| Fx5 – News feed                    | Follows-based message feed |
| Fx6-Fx8 – Interactions             | Likes, comments, replies |
| Fx9 – Follow system                | Follow/unfollow users |

Optional features: tags, notifications, private messaging, themes, moderation.

---

## Role Permissions

- **Visitor**: Register only
- **User**: Post, follow, interact
- **Moderator**: Content moderation, banning
- **Admin**: Full platform control

---

## ⚙️ Prerequisites

- Docker
- Docker Compose
- Node.js 18+
- pnpm

---

## 🚀 Installation

1. Clone the repository:
```bash
git clone https://github.com/Breezy-orga/Breezy-frontend.git
git clone https://github.com/Breezy-orga/Breezy-backend.git
git clone https://github.com/Breezy-orga/Breezy-Infra.git
cd breezy-infra
```

2. Start the environment:
```bash
# Using the setup script
./scripts/setup.sh

# Or manually with docker-compose
docker-compose up --build
```

---

## 🛰️ Services

- **Frontend** (Next.js): http://localhost:3000  
- **Backend** (Node.js / Express): http://localhost:5000  
- **MongoDB**: mongodb://localhost:27017

---

## 🛠️ Scripts

- `scripts/setup.sh`: Setup and start all services

---

## 🤝 Contributing

1. Fork the repository  
2. Create a feature branch:  
   ```bash
   git checkout -b feature/NewFeature
   ```
3. Commit your changes:  
   ```bash
   git commit -m "Add NewFeature"
   ```
4. Push to your branch:  
   ```bash
   git push origin feature/NewFeature
   ```
5. Open a Pull Request

---

## 📄 License

This project is developed in an educational context (CESI). Use and distribution are subject to the module's guidelines.

---