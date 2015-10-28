## Daniele Silvestro

**Estimating speciation and extinction rates from fossil data**

Fossil data can be more informative (and more abundant, diverse) than data from extant taxa.  E.g. horses- 17 extant spp, >400 known from fossil data.  

Hierarchical Bayesian framework to estimate rates of sppn, extn, rate shifts. The data we have are fossil occurrences. Hard to estimate p(rate | fossil).  

It's possible to estimate the rates from times of sppn and extn, TS & TE ==> p(rate | TS, TE).   

The model does *parameter expansion* to get from occurrence data to TS and TE ==> p(TS, TE | data)

*Level 1*  
Likelihood framework used to estimate TS and TE, as well as some preservation rate.  

Nonhomogenous Poisson process used to estimate preservation rate- hump-shaped p(leaving a fossil).  Makes sense- population size probably small early on in lineage's lifetime; grows; declines. p(Leaving a fossil) follows this. Preservation rate is species-specific.  

*at this point we have estimates of the lifespan of the species (when it began, when it ended)

***Level 2***  
Priors- inclues birth-death process and rates of sppn and extn (and their temporal variation). No contact with real data... The vector of TSs and the vector of TEs is the input to estimate birth-death parameters.  
