# circular data statistics
This is for comparing two sets of directional or circular distributions.
The sdemo contains two groups of direction data in radius.

First, we map each direction onto a unit curcle that has a radius of 1. The polar direction is defined as the angular measurement.
We then get the mean directions based on these vectors on the unit circle, and calculate the difference between two mean vectors.

For statistics, we create the empirical null distribution from the surrogate datasets, whcih is generated by randomly relabeling angular data in both groups, regardless of the actual group label. 
The p value is obtained by the likelihood of the mean difference between two groups being in the empirical null distribution.
 