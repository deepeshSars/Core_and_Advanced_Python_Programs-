#Q2. Write a Python program that prompts the user to input an integer and raises a ValueError exception if the input is not a valid integer

def get_integer():
    try:
        # Prompt user input
        num = int(input("Enter an integer: "))
        print(f"Valid integer entered: {num}")
    except ValueError:
        # Handle non-integer input
        print("Error: Invalid input! Please enter a valid integer.")

# Call the function
get_integer()


'''
OUTPUT:
Enter an integer: 25
Valid integer entered: 25

Enter an integer: 0
Error: Invalid input! Please enter a valid integer.
'''
