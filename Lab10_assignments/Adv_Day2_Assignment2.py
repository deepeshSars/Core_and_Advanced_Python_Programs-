import re

emails = [
    "jack@company1.com",
    "amelia@business2.org",
    "henry@techhub.net",
    "invalid-email.com",  # No '@' symbol
    "@missinguser.com",  # Missing username
    "lucas@sub.domain.example.com"  # Multi-level domain
]

# Extract valid email domains using regex and error handling
email_domains = [
    match.group(1) for email in emails if (match := re.search(r'@([\w.-]+)', email))
]

print(email_domains)


'''

Output :-

['company1.com',
'business2.org', 'techhub.net', 'missinguser.com', 'sub.domain.example.com']

'''
