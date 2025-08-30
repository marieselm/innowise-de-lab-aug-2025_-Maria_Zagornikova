# Упражнение 4: List comprehension и словари

# Дано
words = ["hello", "world", "python", "code"]

# 1. Создаем список длин слов, используя списковое включение
lengths_words = [len(word) for word in words]
print(f"Список длин слов: {lengths_words}")

# 2. Создаем список слов длиннее 4 символов
long_words = [word for word in words if len(word) > 4]
print(f"Список слов длиннее 4 символов: {long_words}")

# 3. Создаем словарь: {слово: длина} для всех слов
dict_word = {word: len(word) for word in words}
print(f"Словарь слов и из длин: {dict_word}")
