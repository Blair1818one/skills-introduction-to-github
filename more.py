def calcalate_sum(n):
    even_sum  = odd_sum = 0
    even_numbers = []
    odd_numbers = []
    for i in range(1, n + 1):
        if i % 2 == 0:
            even_sum += i
            even_numbers.append(i)
        else:
            odd_sum += i
            odd_numbers.append(i)
    return even_sum, odd_sum, even_numbers, odd_numbers
def main():
    n = int(input("Enter a positive number: "))
    if n <= 0:
        print("please enter a positive number.")
        return
    even_sum, odd_sum, even_numbers, odd_numbers = calcalate_sum(n)
    print(f"sum of even numbers: {even_sum}\nEven numbers: {even_numbers}")
    print(f"sum of odd numbers: {odd_sum}\nodd numbers: {odd_numbers}")
if __name__ =="__main__":
    main()