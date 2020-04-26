import numpy as np
from numpy.polynomial.polynomial import polyfit
import matplotlib.pyplot as plt
sig_N = np.loadtxt('sigma.txt')
sig_N_log = np.loadtxt('sigma_log.txt')
path = np.loadtxt('path_N200.txt')
hist = np.loadtxt('data1big.txt')


#x = sig_N[:, 0]
#y = sig_N[:, 1]
#x = sig_N_log[:, 0]
#y = sig_N_log[:, 1]
x = hist[:,0]
y = hist[:,1]

#plt.plot(sigma, N,'r--')
#plt.plot(sigma_log, N_log, 'b.')
#plt.show()

# Fit with polyfit
#b, m = polyfit(x, y, 1)

#plt.plot(x, y, marker='.')
#plt.plot(x, b + m * x, 'r-', label='y={:.2f}x+{:.2f}'.format(m,b))
plt.hist(x=y, bins=58, histtype='bar', ec='black')
plt.xlabel(r'$x_N$')
plt.ylabel(r'$K$')

#plt.legend(fontsize=9)

plt.show()