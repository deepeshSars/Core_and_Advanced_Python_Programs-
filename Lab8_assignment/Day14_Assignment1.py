#Q1. Write a Python program to handle a ZeroDivisionError exception when dividing a number by zero.

def divide_numbers(a, b):
    try:
        # Attempt to divide the numbers
        result = a / b
        print(f"Result: {result}")
    except ZeroDivisionError:
        # Handle the case when division by zero occurs
        print("Error: Division by zero is not allowed.")

# Example usage
num1 = float(input("Enter the numerator: "))
num2 = float(input("Enter the denominator: "))

divide_numbers(num1, num2)


'''
OUTPUT:
Enter the numerator: 60
Enter the denominator: 4
Result: 15.0

Enter the numerator: 10
Enter the denominator: 0
Error: Division by zero is not allowed.
'''
