# SamplingPF
This is the scripts to sample points on the Pareto-optimal front (PF) of a given test problem.

## Basic Idea
Since the analytical forms of ZDT and DTLZ test problems are easy to understand, we at first use the classic Das and Dennis's method to sample given number of reference points on a canonical simplex. Afterwards, we back-compute the intersection point between a reference line and PF.

## To Do List
The current version can only be useful for ZDT and DTLZ problems. In future, we will explore the following issues:

1. The scripts for DTLZ5 to DTLZ7 problems can only serve the sampling purpose in 3-objective case. We will extend the idea for many-objective cases, i.e., \# of objectives > 3.
2. The analytical forms of WFG test problems are not quite well understanable -.- However, we still try to figure out a sampling method for WFG problem, which is very much need in the evolutionary multi-objective optimization field.
3. The sampling method can be extended for multi-objective constrained optimization problems, which are our next step.

<img src="ZDT.png" style="width: 850px;"/>
