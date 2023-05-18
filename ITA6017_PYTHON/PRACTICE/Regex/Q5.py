import re

email = "john@google.com"

match = re.search(r"(\w+)@(\w+)", email)

username = match.group(1)

company_name = match.group(2)

print(username, company_name)
