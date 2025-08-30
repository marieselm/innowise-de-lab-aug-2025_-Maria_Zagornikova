# Упражнение 2: Функции с параметрами

prices = [1000, 3499, 250] 
nds = 0.20

def add_vat(price, rate):
    return price + price * rate

for price in prices:
    final_price = add_vat(price, nds)
    print(f"Цена с НДС: {final_price}")
