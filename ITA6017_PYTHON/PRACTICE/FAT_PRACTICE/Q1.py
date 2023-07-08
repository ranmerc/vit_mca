inputs = ["aroundTheWorld", "saveChangesInTheEditor"]


def countUpperLetters(word):
    c = 0
    for l in word:
        c = c + (1 if l.isupper() else 0)
    return c


for input in inputs:
    print(countUpperLetters(input) + 1)
