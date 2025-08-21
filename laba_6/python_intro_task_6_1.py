# Задание 6: Калькулятор (Опциональное)
# Программа работает как простой калькулятор
# Запрашивает 2 числа и символ операции (+, -, *, /)
# Выполняет расчёт и выводит результат

num1 = float(input("Введите первое число: "))
num2 = float(input("Введите второе число: "))
operation = input("Выберите оператор (+, -, *, /): ")

if operation == "+":
    result = num1 + num2
elif operation == "-":
    result = num1 - num2
elif operation == "*":
    result = num1 * num2
elif operation == "/":
    if num2 != 0:
        result = num1 / num2
    else:
        result = "Ошибка: деление на ноль"
else:
    result = "Ошибка: неизвестная операция"

print(f"Результат: {num1} {operation} {num2} = {result}")
