# Упражнение 2: Методы строк и форматинг

# Дано
email = " USER@DOMAIN.COM "

# 1. Очищаем и форматируем до вида: "user@domain.com"
clean_email = email.strip().lower()
print(f"Email после очистки и форматирования: {clean_email}")

# 2. Разделяем на имя пользователя и домен
username, domain = clean_email.split("@")
print(f"Имя пользователя: {username}")
print(f"Домен: {domain}")

# 3. Создаем, через f-строку: "Username: user, Domain: domain.com"
print(f"Username: {username}, Domain: {domain}")
