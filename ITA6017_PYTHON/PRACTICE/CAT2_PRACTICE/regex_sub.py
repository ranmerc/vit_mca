import re

replace_re = re.compile(r"\w+")

eu = "eu"
print(replace_re.sub("12", eu))
print(eu)
