'''Q2. Write a Python program to remove duplicate characters of a given string. 

Input = “String and String Function” 

Output: String and Function '''

# Python program to remove duplicate characters from a given string

def remove_duplicates(s):
    words = s.split()  # Split the string into words
    seen = set()  # Set to store unique words
    result = []  # List to store words in order
    
    for word in words:
        if word not in seen:  # Check if the word is already seen
            seen.add(word)
            result.append(word)
    
    return ' '.join(result)  # Join words back into a string

# Given input string
input_string = "String and String Function"

# Function call
output_string = remove_duplicates(input_string)

# Display the output
print(output_string)


'''
OUTPUT:
String and Function
'''
