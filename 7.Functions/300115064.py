def func1():
    print("i am a fuction")
    
def func2(arg1, arg2):
    print(arg1," ", arg2)
def cube(x):
    return x*x*x
def power(num, x=1):
    result = 1
    for i in range (x):
        result = result * num
    return result
    func2(10,20)
print(func2(10,20))
print(cube(3))
