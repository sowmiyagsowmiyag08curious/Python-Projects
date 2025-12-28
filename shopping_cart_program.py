foods = []
prices = []
total = 0
while True:
    food = input("Enter a food to buy (q to quit):").lower()
    if food == "q":
        break
    else:
        price = float(input(f"Enter the price of a {food}:"))
        foods.append(food)
        prices.append(price)       
print("------------------------YOUR CART---------------------------")        
for x, y in zip(foods, prices):
    print(f"{x} - ${y:.2f}")
    total += y  
print()
print("------------------------YOUR TOTAL---------------------------")
print(f"Your total is : ${total}")
