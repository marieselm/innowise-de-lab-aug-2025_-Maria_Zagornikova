# Задание 4: Обработка данных
# Подсчёт баллов студентов с обработкой исключений
# Пропускаются отрицательные значения, при 0 — остановка цикла
# Использованы break, continue и else

scores = [75, 88, -10, 95, 100, -25, 89]
total_score = 0

for score in scores:
    if score < 0:
        continue
    if score == 0:
        print("Обработка прервана")
        break
    total_score += score
    print(f"Добавлен балл: {score}")

else:
    print("Все данные успешно обработаны")

print(f"\nИтоговая сумма баллов: {total_score}")
