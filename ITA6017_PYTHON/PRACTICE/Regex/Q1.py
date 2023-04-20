import re

url = 'file://localhost:4000/zipfile/real'

urlRegex = re.compile(r'(\w+):\/\/([\w\-\.]+)(:(\d+))?\/([\w\-]+)+')

urlMatch = urlRegex.match(url)

if urlMatch:
    print(urlMatch.group())
    print(urlMatch.groups())