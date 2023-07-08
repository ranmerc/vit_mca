inp = "aaabccddd"
res = ""

for i in range(1, len(inp)):
    if inp[i] == inp[i - 1]:
        inp = inp[: i - 1] + "  " + inp[i + 1 :]
    print(inp.replace(" ", ""))
