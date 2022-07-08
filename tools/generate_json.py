import json
import random

data = []

pos = [1, 2, 3, 4]

random.seed(5)

file = open("time.txt", "r")
for line in file:
    data.append({"time": float(line.replace('\n', "")), "speed": 8, "notes": [
        {"pos": random.choice(pos), "type": 1}
        ]})

with open('wings_of_piano.json', 'w') as outfile:
    json.dump(data, outfile)
