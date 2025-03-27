employees = [
    {"name": "Sophia Miller", "department": "Sales"},
    {"name": "Liam Johnson", "department": "HR"},
    {"name": "Olivia Brown", "department": "Sales"},
    {"name": "Noah Wilson", "department": "IT"},
    {"name": "Emma Clark", "department": "SALES"},  # Mixed case department
    {"name": "Ava Turner"}  # Missing department key
]

# Extract Sales employees, handling missing keys and case differences
sales_employees = [
    emp["name"].upper()
    for emp in employees
    if emp.get("department", "").lower() == "sales"
]

print(sales_employees)


'''
Output :-
['SOPHIA MILLER', 'OLIVIA BROWN', 'EMMA CLARK']

'''
