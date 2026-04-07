# 🚀 Flask + PostgreSQL Dockerized App

## 📌 Overview

This project is a multi-container application using Flask, PostgreSQL, Nginx, and Docker. It demonstrates containerization, networking, and persistent storage.

---

## ⚙️ Features

* Multi-container architecture
* Reverse proxy using Nginx
* Persistent database storage using Docker volumes
* Secure credential handling using Docker secrets
* Production-ready setup with Gunicorn

---

## 🔐 Setup Secrets (IMPORTANT)

Create a `secrets/` folder and add the following files:

### 📄 `secrets/postgres_user.txt`

```
admin
```

### 📄 `secrets/postgres_password.txt`

```
password
```

---

## ▶️ How to Run

### 🟢 Build & Start Containers

```
docker compose up --build
```

---

### 🟢 Open in Browser

```
http://localhost
```

---

## 🧪 Test

* Add a post using the UI
* Refresh page → data should persist

---

## 💾 Data Persistence

```
docker compose down
```

→ keeps data

```
docker compose down -v
```

→ deletes all data

---

## 🛠 Useful Commands

### Stop containers

```
docker compose down
```

### Rebuild containers

```
docker compose up --build
```

### View logs

```
docker compose logs -f
```

### Check running containers

```
docker ps
```

