1# 💳 P2P Payment System

Учебный проект — система peer-to-peer платежей на Spring Boot с Redis кэшированием.

## 🚀 Технологии

- **Backend:** Java 21, Spring Boot 3.2
- **Database:** PostgreSQL 15
- **Cache:** Redis 7
- **Build Tool:** Gradle
- **Containerization:** Docker, Docker Compose

## 📦 Запуск инфраструктуры

```bash
# Запуск PostgreSQL + Redis
docker compose up -d

# Проверка статуса
docker compose ps

# Остановка
docker compose down

🔌 Подключения
PostgreSQL
Host: localhost:5432
Database: p2p_payment_db
User: p2p_user
Password: p2p_password
Redis
Host: localhost:6379
Password: redis_password
📚 Документация
Подробная документация модулей находится в папке /docs.

👨‍💻 Автор
[Гаскаров Евгений]