def main():
    age = int(input("please enter your age"))
    if age < 18:
        print("achild price")
    elif 13 <= age <= 64:
        print("adult price")
    else:
        print("senior price")

if __name__=="__main__":
    main()