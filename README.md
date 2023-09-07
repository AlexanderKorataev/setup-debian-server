# Debian Server Setup Script

Этот репозиторий содержит bash-скрипт для быстрой настройки сервера на Debian. Скрипт автоматически устанавливает следующие инструменты и службы:

- oh-my-zsh
- Python 3.10
- nvm
- Node.js 18
- npm
- MongoDB
- PostgreSQL
- nginx
- Supervisor

## Использование

1. Клонируйте репозиторий:
```bash
git clone https://github.com/AlexanderKorataev/setup-debian-server.git
```
2. Перейдите в директорию репозитория:
```bash
cd setup-debian-server
```
3. Сделайте скрипт исполняемым:
```bash
chmod +x setup_server.sh
```
4. Запустите скрипт:
```bash
./setup_server.sh
```
Примечание: Рекомендуется запускать этот скрипт на чистой машине или виртуальной среде, чтобы избежать конфликтов пакетов и зависимостей. Также убедитесь, что перед применением на продуктивной среде скрипт был протестирован в безопасной среде.
