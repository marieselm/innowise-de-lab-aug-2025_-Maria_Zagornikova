# Упражнение 5 (Опционально): 
# Дан список чисел nums и целевое число target
# Найти индексы двух чисел, сумма которых равна target

print("Программа ищет индексы двух чисел, сумма которых равна target")
print()

# Пример 1
print("Пример 1 с target 9 и исходным списком: [2, 7, 11, 15]")
nums_first = [2, 7, 11, 15]
target = 9

for i in range(len(nums_first)):
    for j in range(i + 1, len(nums_first)):
        if nums_first[i] + nums_first[j] == target:
            print(f"Ответ: [{i}, {j}]")

print()

# Пример 2
print("Пример 2 с target 6 и исходным списком: [3, 2, 4] ")
nums_second = [3, 2, 4]
target = 6

for i in range(len(nums_second)):
    for j in range(i + 1, len(nums_second)):
        if nums_second[i] + nums_second[j] == target:
            print(f"Ответ: [{i}, {j}]")
