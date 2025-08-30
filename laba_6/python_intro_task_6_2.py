# Задание 6: Калькулятор (Опциональное)
# Программа работает как простой калькулятор
# Заправшивает 2 числа и символ операции (+, -, *, /)
# Выполняет расчёт и выводит результат

def calculate(num1, num2, operation):

    if operation == "+":
        return num1 + num2
    elif operation == "-":
        return num1 - num2
    elif operation == "*":
        return num1 * num2
    elif operation == "/":
        if num2 != 0:
            return num1 / num2
        else:
            return "Ошибка: деление на ноль"
    else:
        return "Ошибка: неизвестная операция"

print("Добро пожаловать в калькулятор!")

while True:
    try:
        num1 = float(input("Введите первое число: "))
        num2 = float(input("Введите второе число: "))
        operation = input("Выберите оператор (+, -, *, /): ").strip()

        result = calculate(num1, num2, operation)

        print(f"Результат: {num1} {operation} {num2} = {result}")
    except ValueError:
        print("Ошибка: введите корректные числа.")

    again = input("Хотите выполнить ещё одну операцию? (да/нет): ").strip().lower()
    if again != "да":
        print("До свидания!")
        break
