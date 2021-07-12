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

# print(len(data_clear['system']))
# time_steps = np.arange(1000, 25000, 500)
time_steps = np.arange(1000, 16000, 1000)
print(time_steps)

plt.plot(time_steps, data_clear['system'], label='system')
#plt.plot(time_steps, data_clear['selection'], label='selection')
#plt.plot(time_steps, data_clear['insertion'], label='insertion')
#plt.plot(time_steps, data_clear['bubble'], label='bubble')
plt.plot(time_steps, data_clear['quick'], label='quick')


plt.legend()
plt.savefig("just_quick_system.png", transparent=False)
