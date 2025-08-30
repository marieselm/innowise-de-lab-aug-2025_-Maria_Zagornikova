# Упражнение 3 (Опционально)

def calculate_average_score(scores, ignor_lowes = False):
    if ignor_lowes and len(scores) > 1:
        scores = sorted(scores)[1:]
    return sum(scores) / len(scores)

student_data = [
    {'name': 'Алексей', 'scores': [85, 92, 78, 95]}, 
    {'name': 'Марина', 'scores': [65, 70, 58, 82]},
    {'name': 'Светлана', 'scores': [98, 95, 100]} 
]

# 1. Без удаления худших оценок
print("Средние баллы для всех оценок:")
for student in student_data:
    avg = calculate_average_score(student['scores'])
    print(f"{student['name']}: {round(avg, 2)}")

print()

# 2. С удалением худщих оценок
print("Средние баллы без худших оценок:")
for student in student_data:
    avg = calculate_average_score(student['scores'], ignor_lowes = True)
    print(f"{student['name']}: {round(avg, 2)}")
