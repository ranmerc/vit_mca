import re


def isValid(str):
    if len(str) != 16:
        return False
    if re.match(r"[A-Z]{2}[0-9][1-9]\s(19|20)[0-9]{8}[1-9]", str):
        return True
    return False


print(isValid("TN09 20181563489"))
print(isValid("TN16 16450265478"))

dicti = {"b": 1, "a": 3, "c": 2}

list_dicti = list(dicti.items())

list_dicti.sort()

print("By key", list_dicti)

list_dicti.sort(key=lambda x: x[1])

print("By value", list_dicti)
