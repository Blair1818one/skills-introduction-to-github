def calculate_the_rectangular_properties(length, width):
    area = length * width
    peremeter = 2 * (length + width)
    return area,peremeter
def main():
    length = float(input("Please enter the length of the rectangle:"))
    width = float(input("Please enter the width of the rectangle:"))
    area,peremeter = calculate_the_rectangular_properties(length, width)
    print(f"Area:{area}")
    print(f"Peremeter:{peremeter}")
if __name__=="__main__":
    main()