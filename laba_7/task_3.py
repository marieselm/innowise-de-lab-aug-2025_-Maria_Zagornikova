# Задание 3: Угадай число
# Программа загадывает число от 1 до 10 
# Пользователь вводит ответы, пока не угдает

secret_number = 7
number = 0

while number != secret_number:
    number = int(input("Угадайте число от 1 до 10: "))
    if number != secret_number:
        print("Неверно, попробуйте ещё раз.")

print("Поздравляю! Вы угадали число!")
