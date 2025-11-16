import matplotlib.pyplot as plt
import numpy as np

x=np.arange(0,1,0.000001)
y=np.sin(1/x)

plt.xlabel("x-axis")
plt.ylabel("y-axis")

plt.plot(x,y)
plt.grid()
plt.show()
