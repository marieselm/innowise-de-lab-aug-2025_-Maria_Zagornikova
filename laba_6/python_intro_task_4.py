# Задание 4: Угадай число
# Программа "загадывает" случайное число от 1 до 5
# Пользователь пытается угадать его
# Программа сравнивает со свои и выводит 1 из 3 сообщений

import random

secret_number = random.randint(1, 5)
guess = int(input("Угадай число от 1 до 5: "))

if guess == secret_number:
    print("Ты угадал!")
elif guess > secret_number:
    print("Слишком много!")
else:
    print("Слишком мало!")
