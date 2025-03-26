'''Q1. Write a Python program to Count all letters, digits, and special symbols from the given 

string Input = “P@#yn26at^&i5ve”

 Output: Chars = 8 Digits = 2 Symbol = 3 '''

# Python program to count letters, digits, and special symbols

def count_elements(s):
    chars, digits, symbols = 0, 0, 0  # Initialize counters
    
    for char in s:  # Iterate through each character in the string
        if char.isalpha():  # Check if it's a letter
            chars += 1
        elif char.isdigit():  # Check if it's a digit
            digits += 1
        else:  # If it's neither, it must be a special symbol
            symbols += 1
    
    return chars, digits, symbols  # Return counts

# Given input string
input_string = "P@#yn26at^&i5ve"

# Function call
chars, digits, symbols = count_elements(input_string)

# Display the output
print(f"Chars = {chars} Digits = {digits} Symbol = {symbols}")


'''
OUTPUT:
Chars = 8 Digits = 3 Symbol = 4
'''
