# concession stand program of Skys menu


menu = {"pizza": 4.50,
        "soshi": 3.30,
        "chips": 1.00,
        "soda": 3.00,
        "barger": 3.10,
        "popcorn": 4.00,
        "salad": 1.50,
        "rice": 3.20}

cart =[]
total = 0

print("--------MENU--------")
for key, value in menu.items():
    print(F"{key:10}: ${value:.2f}")
print("------------------------------")

while True:
    food =input("select an item (p to quit): ").lower()
    if food  == "p":
       break
    elif menu.get(food) is not None:
        cart.append(food)

print("-----------YOUR ORDER------------")
for food in cart:
    total += menu.get(food)
    print(food, end=" ")

print()
print(f"total is: ${total:.2f}")
        