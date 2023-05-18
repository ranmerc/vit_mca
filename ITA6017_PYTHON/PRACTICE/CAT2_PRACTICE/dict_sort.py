from operator import itemgetter

emp = [
    {"name": "n3", "age": 50},
    {"name": "n2", "age": 22},
    {"name": "n1", "age": 22},
]

itemgetter_sorted = sorted(emp, key=itemgetter("age", "name"))

print(itemgetter_sorted)

lambda_sorted = sorted(emp, key=lambda x: x["age"])

print(lambda_sorted)
