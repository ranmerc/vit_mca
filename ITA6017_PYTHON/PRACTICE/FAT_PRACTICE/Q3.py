def isAnagram(str1, str2):
    countMap1 = {}
    countMap2 = {}

    for l in str1:
        if l not in countMap1:
            countMap1[l] = 0
        countMap1[l] += 1

    for l in str2:
        if l not in countMap2:
            countMap2[l] = 0
        countMap2[l] += 1

    return countMap1 == countMap2


string = "abba"
substrings = []
for i in range(len(string)):
    for j in range(i + 1, len(string) + 1):
        substrings.append(string[i:j])

print(len(substrings), substrings, sep="\n")

anagramPairs = []

for i in range(len(substrings)):
    for j in range(i + 1, len(substrings)):
        if isAnagram(substrings[i], substrings[j]):
            anagramPairs.append([substrings[i], substrings[j]])

print(len(anagramPairs), anagramPairs, sep="\n")
