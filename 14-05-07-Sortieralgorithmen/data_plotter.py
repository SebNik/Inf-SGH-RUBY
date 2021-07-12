import numpy as np
import matplotlib.pyplot as plt

with open("data.csv") as file:
   data = file.readlines()

data_formatted = []

for row in data:
    if row != '"\n':
        data_formatted.append(float(row.split(' ')[-1].replace(')', '').strip()))

data_clear = {
    "selection": [],
    "system": [],
    "bubble": [],
    "quick": [],
    "insertion": [],
}

for i in range(0,len(data_formatted)-1, 5):
    data_clear['system'].append(data_formatted[i])
    data_clear['selection'].append(data_formatted[i+1])
    data_clear['insertion'].append(data_formatted[i+2])
    data_clear['bubble'].append(data_formatted[i+3])
    data_clear['quick'].append(data_formatted[i+4])

print(len(data_clear['system']))

time_steps = np.linspace(1000, 15000, num=15)
print(time_steps)

plt.plot(time_steps, data_clear['system'], label='system')

plt.legend()
plt.show()



