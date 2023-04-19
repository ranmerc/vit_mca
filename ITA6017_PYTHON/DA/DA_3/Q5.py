print("Enter number of cities available:")
no_of_cities = int(input())

cities = set()

print("Enter city names:")
for i in range(no_of_cities):
    cities.add(input())

cities_visited = set()

print("Enter number of cities visited by first salesman:")
cities_first = int(input())

print("Enter city names:")
for i in range(cities_first):
    cities_visited.add(input())

print("Enter number of cities visited by second salesman:")
cities_second = int(input())

print("Enter city names:")
for i in range(cities_second):
    cities_visited.add(input())

print("Enter number of cities visited by third salesman:")
cities_third = int(input())

print("Enter city names:")
for i in range(cities_third):
    cities_visited.add(input())

print("Cities remaining to be visited:", cities - cities_visited)
