print("welcome to number teller!")
number =int(input("please enter a number between 1 and 9"))
if number ==1:
    print ("you have entered number_one")
elif number ==2:
    print("you have entered number_two")
elif number ==3:
    print("yuo have entered number_three")
elif number ==4:
    print("you have entered number_four")
elif number ==5:
    print("you have entered numberFive")
elif number ==6:
    print("you have entered number_six")
elif number ==7:
    print("you hav entered number_seven")
elif number ==8:
    print("you have eneted number_eight")
elif number ==9:
    print ("you have entered number_nine")                
else:
    print("lnvalid,please enter anumber between 1 and 9")

    #TODO
    '''
    With the use of the if sentences, write a python that allows an instractor to enter a mark strictly between 0 and 100.

    on reciving the mark, the program has to be asssign a greade basae on you defined clusters ie 80-90 is 91_100 A+ etc. 
    '''  
       
          
print("wellocame to ucu grading  scale")
marks = int(input("please enter marks between 0 and 100"))
if marks >= 91 and marks <= 100:
    print("A+")
elif marks >=81 and marks <=90:
    print("A")
elif marks >=71 and marks <=80:
    print("B+")
elif marks >=61 and marks <=70:
    print("B")
elif marks >=51 and marks <=60:
    print("C+")
elif marks >=41 and marks <=50:
    print("C")
elif marks >=31 and marks <=40:
     print("D+")
elif marks >=21 and marks <=30:
    print("D")
elif marks >=11 and marks <=20:
    print("E")
elif marks >=0 and marks <=10:
    print("fail")
else:
     print("lnvalid please enter a mark between 0 and 100")                    

                    



