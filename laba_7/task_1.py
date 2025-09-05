# Задание 1: Список покупок
# Программа выводит список покупок с нумерацией

shopping_list = ["milk", "bread", "eggs", "butter", "apples"]
print("Список покупок:")

i = 1 
for item in shopping_list:
    print(f"{i}. {item}")
    i += 1
