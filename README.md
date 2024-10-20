# bfh_sem5_sda2_poc-microservices

BFH Modul SDA2 - Erstellen eines PoC für Microservices

# Start & Access DB

1. Install Docker Desktop
2. Clone Repository
3. Open Terminal in VS Code & execute in Repositoryfolder: docker compose up -d
4. Open new Git Bash in VS Code & execute: docker exec -i sda2_database mariadb -uroot -pexample sda2_database < database.sql
5. Open: localhost:8080
6. Enter the following:

| Parameter | Value         |
| --------- | ------------- |
| server    | sda2_database |
| Username  | root          |
| Password  | example       |
