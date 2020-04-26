# Drunkard algorithm

> The code was written for Statistical Physics Course on Big Data Analytics studies.

## Description

- The program was written in FORTRAN.90 language and compiled by GNU Fortran compiler in Code::Blocks.
- The data was fitted and plotted using Python and libraries: polyfit, numpy and matplotlib.pyplot.
- The table with linear regression coefficients in Figure 4 is from OriginLab program.

**Parameters used in simulation:**
- K = 40000
- N = 200
**where:**
- K - number of drunkards
- N- number of steps.

## Results

[![Plots](https://raw.githubusercontent.com/matetuh/Drunkard-algorithm/master/Plot1.JPG)]()

- From theoretical prediction after log in on both sides of the equation σ(xN) = sqrt(N) we should get the coefficient ½ before log(N) equation.

- As we can see in the Figure 4 we have got the slope coefficient after linear regression of the plot log10(σ(N)) equal to (0.4802 ± 0.0022). The standard error is on the level of 0.46 % of the slope coefficient value.
