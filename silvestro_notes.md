## Daniele Silvestro

**Estimating speciation and extinction rates from fossil data**

Fossil data can be more informative (and more abundant, diverse) than data from extant taxa.  E.g. horses- 17 extant spp, >400 known from fossil data.  

Hierarchical Bayesian framework to estimate rates of sppn, extn, rate shifts. The data we have are fossil occurrences. Hard to estimate p(rate | fossil).  

It's possible to estimate the rates from times of sppn and extn, TS & TE ==> p(rate | TS, TE).   

The model does *parameter expansion* to get from occurrence data to TS and TE ==> p(TS, TE | data)

***Level 1***     
Likelihood framework used to estimate TS and TE, as well as some preservation rate.  

Nonhomogenous Poisson process used to estimate preservation rate- hump-shaped p(leaving a fossil).  Makes sense- population size probably small early on in lineage's lifetime; grows; declines. p(Leaving a fossil) follows this. Preservation rate is species-specific.  

*at this point we have estimates of the lifespan of the species (when it began, when it ended)*

***Level 2***  
Priors- inclues birth-death process and *rates* of sppn and extn (and their temporal variation). No contact with real data... The vector of TSs and the vector of TEs is the input to estimate birth-death parameters and the rates of sppn, extn.  

In MCMC framework parameters estimated as a function of the posterior distributions.    

*These are the parameters we are really interested in*   

***Level 3***    
Hyperpriors are needed to estimate priors- we can add some information with this approach. E.g. we know that an extant species is part of a lineage even though it left no fossil evidence yet.  

Useful looking slide from the talk - 

p(s, e, q, lambda, mu|D, NObs) ~ p(D|s, e, q)p(s, e|lambda, mu)p(lambda, mu|N obs)p(q)

If lineage left many fossils, the confidence intervals are smaller- makes sense bc if it were to exist then you would expect more fossils due to higher preservation rate. Clever!



