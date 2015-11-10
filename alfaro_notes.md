---
title: "Evolution 200A"
author: "Gaurav Kandlikar"
output: html_document:
  toc: true
---

## Mike Alfaro

Patterns of biodiversity at or above the species level: biodiversity is unevenly distributed   
  (classic eg of Tuatara/Lizards+Snakes)- 230 MY of evolution separate the tuatara from extant lizard+snakes
  multiple processes can lead to this pattern- how can we try to tease apart which of them is true?   

We can calculate average rate of sppn in different lineages, and then do some sort of null model analysis to test whether specific clades are "exceptionally diverse." Mike's lab has done this- that particular study was done with data from 300 spp out of the many thousand, but the patterns hold true across vertebrates.    

GoLife- resolve phylogenetic history of life and integrate with trait data- correlates or causes of diversity within trait groups can be investigated. 
This succeeded AVATOL. 

Incomplete phylogenies can still be helpful- eg how many times did a trait evolve (e.g. is coral reef association conserved or did it arise multiple times?)  

Bat diversification work by Rabosky- one lineage of bats (tent-building) is a younger clade than the rest of the bats and has a much higher rate of speciation (for now) than the average rate for the groups. 

Diversity vs Disparity- the latter refers to phenotypic dissimilarity. Clades can be very species rich but functionally uniform, etc. Low sp richness and high disparity can happen if there is a lot of varaition (e.g. in body size in some fishes)   

Losos and Mahler's 2010 paper has a bivariate normal distribution along axes of diversity and disparity- do we really expect this to be normally distributed????? We know that richness often endsup being very unevenly spread. 

Alfaro & Rabosky are using (BAMM)[https://github.com/macroevolution/bamm] to estimate speciation rate for each branch in a group of >8000 fish species- they have made histograms of speciation rate and identified certain branches which appear to have really high rates of speciation.   
We can analyse the rate of speciation or just work with rates of trait evolution.  
It is also very interesting to think about the lineages that have drastically *slow* rates of evolution.  
And it's super interesting to ask whether rates of phenotypic evolution and speciation are correlated.... appears that they are in the fishes!
Thus it appears that evolution is more likely to produce groups along a diagonal on a diversity/disparity graph, and that things in the corner seem "different"  

Hotspots of diversity (e.g. the coral triangle) need not necessarily be so due to high speciation- perhaps the sppn rate and extinction rates are covarying somehow (which seems to have been the case in birds and mammals, not necessarily true in fishes due to error in extn rate estimates).  

**Inferring divergence times**   
it is very useful to understand *when* things happened in the evolutionary history of a clade.

**Community phylogenetics** - Sharon Strauss' work suggesting that phylo distance is a predictor of invasibility   
Tilman's biodiversity-productivity work did not take phylo into account originally but considering it seems to be helping, eg. in Cadotte's reanalysis of Tilman's data that showed that Phylo Distance model had the lower AIC.  

**Systematics and classification** This should be done with a phylogenetic background to make sure that taxonomic groupings should agree with evolutionary history of the groups.

--------------------------
**Phylogenomics**   
Application of NGS to studying many distantly related groups has been difficult.  We're throwing a huge number of genes to protocols that were designed to reconstruct evolutionary history from a handful of genes- this is what the Gatesy paper was getting at.  

We need to use phylogenomic approaches to push the science forward- the best studies using single gene PCRs could use a limited set of DNA markers and a limited taxon set.  

UCEs help modern target-based sequencing methods. This has recently been applied to Fishes as well.  This approach allows us to sample from many regions of the genome.  


------------------------------------
## 2 Nov 2015

**Random notes on Bayesian analysis**     
Effective sample size is not equal to number of chains because of autocorrelation of sample points within each chain- this ESS is shown in Tracer, and an ESS > 200 should be good enough.   
MCMC is not optimizing- it is just jumping around and reacting to current state- always tend to go up; may step down in likelihood.   

**UCE data**      

How should UCE data be analyzed? Followup to Gatese et al.  
Concatenated approach- combine all loci into one matrix assumes (all sequences evolved on one tree). This felt more inclusive than doing each gene separately and trying to reconcile all the different stories that come out.  

Gene-tree/Species-tree methods allow for the possibility that each gene tree can estimate a different topology than the synthesized species tree. Each gene tree gets its own favorite topology, and given this distribution a most likely species tree is estimated. This approach makes sense - it is well documented that genes could estimate different topology. But there is a problem, namely that the process of allowing every gene to have its own topology is much more difficult, computationally! So many parameters to estimate!

Horizontal transfer is missed up and hard to deal with. If you get an extinction of a gene in a lineage and a horizontal transfer from a non-sister taxon, then the gene tree is going to be very messy.    
Genetic drift (multiple copies of alleles exist within a population and are not completely sorted out before the next speciation event occurs- eg smaller populations, short times between speciation events) can cause problems... Jargon: deep coalescence can be caused by incomplete lineage sorting.  

NGS should be a good fit for gt/st analyses, but there were problems. The programs wouldn't run with many-a genes. NGS also won't give you a complete matrix- some genes will be missing- this poses a much bigger problem for gt/st than it does for concat People have tried to work around with things like concatalescent, which Gatese and Springer say just don't work!  

Gatese and Springer tried concatenating a bunch of data for mammals and showed that concat analyses recovered all of 10 commonly accepted nodes- but these nodes are not all recovered by other gt/st methods.  

But concatenation can lead to biased estimates- it's true that we are getting strong support for nodes that are widely accepted- but you should expect this, because when you say there is a single tree estimated from all data, adding data will indeed increase support for a given topology.

Supermatrix can take morphological characters as input.  
Many small genes in a gt/st approach will probably not be able to get a well resolved tree- just too many tips for a 300-1000 base pair locus to decide.  

**Speciation**    
What explains species richness?   
Key innovations? Climatic/geological events? Biogeographic phenomena?   

There are many interesting ideas of what might be going on, but we need a model for how species richness evolves.   
There are some simple processes we can think of- the simplest is the pure birth model.   

**Pure Birth model**- there are lineages, which have a rate of producing new lineages `b`. `N(t) = N(0)e^(bt)`. The number of species grows to infinite in this model in an exponential way ("log lineage through time plot"). This is a very tractable process.  In this model, waiting time (time between branching events) is somewhat log normally distributed; this distribution of waiting time lets us infer the speciation rate. The exact tip positions of the taxa doesn't quite matter too much.   
Rate of diversification in metazoan orders increases exponentially in Cambrian.  May also apply to Hawaiian silversword (Baldwin and Sanderson).    
Warbler diversification is shifted from the log-linear expectation- this might suggest a rate shift- in warblers, early rapid diversification followed by constant diversity.    

But obviously this model has its problems.... if an early diversification suggests a high speciation rate right now, that diversification rate will almost certainly not be sustained! 

We can fix this in a few ways.   

**Birth-Death model**- like pure birth, but allows extinction to happen. `lambda` represents speciation rate; `mu` represents extinction rate.   
`E[N(t)] = N(0)e^(bt)`- as long as `d-b` is positive there will still be an exponential increase, just slower than before.   

When we have a molecular phylogeny, we get a lower slope until very close to the end, but then you get a "pull of the recent" when speciation rate has to ramp up very close to present.


In molecular phylgenies the speicies diversity right now is always going to be higher than diversity in the past.  

Using the `gamma` statistic to assess distribution of waiting times in the tree. If constant rate, waiting time should be normally distributed- but if there were rapid radiation then the `gamma` asks whether the rate of diversification is constant.  

Gamma is just a function of the number of nodes and waiting times. 

If early branching (speciation events before halfway time), `gamma` is negative. Sort of evidence for early radiation i the lineage.  If splitting events concentrated at tips, `gamma` is >0.   
Either of these mean that diversification rate is changing. +/- -1.645 (2 sd's away from zero- usually the negative version is more commonly tested for.)

Incomplete taxon sampling is going to result in a negatively biased `gamma`. If there is incomplete sampling, how negative dows `gamma` need to be to reject null? `MCCR` (monte carlo constant rate) uses simulation to find out how much negative bias you would expect for some degree of incomplete sampling. Essentially just a null model thing

Moleuclar phylogenies are always going to be biased by their lack of extinction information- so the problem of extinction rates will be real.  

**Diversity Dependence methods**    
It is very common to calculate diversification rates on recently evolving clades that are "unsustainable" in the long term. It does not seem reasonable to model changes in diversity over time with constant diversification rates.  

We can kind of model this as a logistic growth towards a maximum diversity- spp richness is an equilibrial value.  Changing speciation rate or the 'species carrying capacity' can change the predicted equlibrium. At some point in these models, the number of species is no longer changing as a function of time- unlike in the pure birth or birth/death models.     

--------------------------

**Morphological evolution**    

perhaps in theory morphological diversity and taxonomic diversity should be correlated- we usually draw taxonomy based on morphology. But even though taxonomic ranks above species are arbitrary, groups like "family" tend to be fairly insightful about the ecology of the group. But we can imagine that the two are decoupled- phenotypic differences within a clade might be relatively small in one clade and really dramatic in another. 

We can look at the distribution of species in a morphospace and ask what kind of evolutionary history can lead to the observed patterns. But what traits to measure? We can get a lot of data (e.g. from CT scans) but what actually matters is a valid question- functional morphologists are out there who strive to identify characters for functional interpretation. One way is to just get a shedload of data, but in this case the story might be lost in the noise. 

Some argue that adaptive raditions should be tested with morpho diversity, since the hypothesis is generally that lineages are diversifying into new niches. Mismatch between species diversity and morpho-dispersal of trilobites in Cambrian. 

Science paper on convergence of ediocaran faunas from different localities.  
---------------------------------------

##  9 November 2015

### Morphological character evolution 

Friedman's work on morphospace over time- after the (K-Pg Event)[https://en.wikipedia.org/wiki/Cretaceous%E2%80%93Paleogene_extinction_event], the morphospace ends up being dominated by a clade (the (percomorphs)[http://tolweb.org/Percomorpha/52146]). The clade becomes more phenotypically diverse and more speciose. 

The hypothesis of **ecological replacement of nonspiny ray predators by percomorph spiny rays** supported by fossil records. The expansion of percomorph morphospace was over the space occupied by the nonspiny rays

Morphological and functional evolution- phenotypes and their emergent properties. Koehl's paper "When does morphology matter"- nonlinear relationship between morphology and functional.  

How independent are dynamics of morphological and functional evolution?  

Interesting biomechanical examples from fish. 

Many-to-one mapping  

--------

Has morphology moved faster in some lineages than other? E.g. Family pomacentridae are reeffishes that are morphologically very similar to each other; labridae are very diverse morphologically  

**BM evolution**   
A continuous-time stochastic process- describes a random walk of evolution  
`E[W(t)] == W(0)`- Expected trait value at a time is equal to starting balue.  
successive time steps independent;   
`W(t) == N(W(0) * \sigma^2*t)`  

A two parameter model- `theta` is `W(0)`; `sigma` is the rate parameter. At the end of the model, the variance of the values is `f(t, sigma)`  

A reasonable (?) way of describing changes in a trait when the trait is f(many independent changes). By the central limit theorem, no matter the distribution of underlying traits, a normal distribution comes out of many draws of the distribution. Demonstrating BM evolution of traits is consistent with genetic drift, or with constantly changing selection or weak selection, or random punctuated change.  

Here the length of time that clades are evolving separately is the `t` parameter. 

Jagged drops in disparity following divergence events because clade disparity drops immediately after speciation since it's the same morpho-variation over more species.  

Phenotypic diversity was shown to be higher in a genus of fish that had a more diverse diets.  

Does sampling from `N(0, sigma^s*t)` yield the same result as `N(trait at last split, sigma^s*t)`?  

Covariation of species pairs is a function of the amount of shared time between two species.  This yields the phylo var/covar matrix.  

```
__              __
| T1 + T2     T1 |
|                |
| T1      T1 + T3|
--             --
```

We can get an ML estimate of the rate of evolution given a phylogeny and trait values for the tips.  Check in Omeara's papers  

**Modified BM models**  
Trends in trait values- mean of a BM walk can tend towards a given value- e.g. Cope's rule of model  

The OU model assumes that there is a central tendency- strength of selection is proportional to distance of current trait to optimum value. 
Variation is a function of the time in BM but not quite in the OU model.  
I wonder how the optimum value is determined- a function of the tree branch lengths and distribution of the traits.  

**Work through the biological reasoning behind OU**    

Ecology of adaptive radiation- how does this X with community ecology? 

AR == changes in rates of sppn and phenotypic variation. Divergence should be in response to Ecological Opporutnity (new environments showing up). The rate of diversification slows down with time as the ecological opportunity decreases. In other words, adaptive evolution is required. But a correlation is insufficient- too weak- a functional model connecting morphotraits to ecology is important. 

Plethodon not an adaptive radiation.  