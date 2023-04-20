import re

def passwordCheck(password):
    if (len(password) > 12 or len(password) < 6):
        return False
    if (not re.search(r'[a-z]', password)):
        return False
    if (not re.search(r'[0-9]', password)):
        return False
    if (not re.search(r'[A-Z]', password)):
        return False
    if (not re.search(r'[$#@]', password)):
        return False
    
    return True

passwords = input()
passwords = passwords.split(",")
validPasswords = []
print(passwords)
for password in passwords:
    if passwordCheck(password):
        validPasswords.append(password)

print(validPasswords)