from pprint import pprint
import re

string = 'New to Python or choosing between Python 2 and Python 3? Read Python 2 or Python 3.'

splitted = re.split(r'\s+', string=string)

wordDict = {}

for word in splitted:
    if word in wordDict:
        wordDict[word] += 1
    else:
        wordDict[word] = 1

pprint(wordDict)