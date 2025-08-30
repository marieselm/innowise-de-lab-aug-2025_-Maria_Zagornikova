# Упаржнение 3: Методы списка

# Исходный список
fruits = ["apple", "banana"]

# 1. Добавляем "orange" в конец списка
fruits.append("orange")
print(f"Список с добавлением 'orange': {fruits}")

# 2. Вставка "grape" по индексу 1
fruits.insert(1, "grape")
print(f"Список со вставкой 'grape' по индексу 1: {fruits}")

# 3. Удаляем "banana"
fruits.remove("banana")
print(f"Список без 'banana': {fruits}")

# 4. Сортировка списка
fruits.sort()
print(f"Список после сортировки: {fruits}")

# 5. Переворачиваем список
fruits.reverse()
print(f"Перевернутый список: {fruits}")
