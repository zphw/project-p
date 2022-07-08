import json

start_time = 125.3
end_time = 127.4
interval = 0.1

pos = 2

data = []
current_time = start_time

while current_time <= end_time:
    data.append({"time": round(current_time, 2), "speed": 15, "notes": [
        {"pos": pos, "type": 2}
        ]})
    current_time += interval

with open('temp.json', 'w') as outfile:
    json.dump(data, outfile)
