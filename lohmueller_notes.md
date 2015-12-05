---
title: "Notes from Kirk Lohmueller"
output: html_document
---

### Wrapping up tree discussion (KEL Lecture 2)     

Picking up from "Gene Trees v Species Trees"    
**Gene trees** are things we can *make* for a particular region of the chromosomes- but there is only one true **species tree** which is the real set of relationships between the taxa.    
Signatures of demographic processes impact different regions of the chromosome diffferently due to the randomness of the coal process.   

Gene trees are influenced by the species trees but there will be subtleties- think of coalescene time for genes from different populations.  This is especially true if a population is large or if that phase only exists for a small number of generations.  **This is incomplete lineage sorting**  - depends very much on demographic history.  

For a given demographic model, we can assess likelihood of a species tree given a gene tree?   

**Edwards and Beerli** slide:  Split model- wait till time `tau` before you can expect coalescence- so coalescence time will always be longer than the split time.  `E[Tcoal] = 2N + tau`  

`Tsplit == tau == constant across all regions of the genome` 

On Maddison 1977 slide- coalescnce of B and C likely to be correct- long time and small population on the left. But on the right you have a much higher chance of B and C not coalescening since their true split- large population sizes and short time to coalescence. 

-----------------------------

## Principles of natural selection 

There are two key relationships between genome and fitness- genotype can affect phenotype (B), which can in turn affect fitness (A). We can also investigate the direct impact of genome on fitness (C), but this is trickier, especially in nonmodel systems.   

Understanding this requires some basic models of natural selection.   

Natural selection occurs when one genotype **systematically** reproduces more than other genotypes- the "systematic" part of this is what differentiates selection from drift.  

Selection in an infinite population, absent every other evolutionary force, is **deterministic**   

Selection can be directional (subsets: additive, dominant, recessive); balancing selection (het advantage; freq dependent selection); underdominance (homozygous for either allele is better)    

Consider a population that is currentlyy in HWE- expect genotype distribution as predicted by HWE. If there is now a fitness advantage based on genotype, we modify HWE distribution with relative fitness of a genotype.  

Sometimes fitness parameterized as Waa == 1; Wbb == 1-s; Wab == 1-hs

Rate of increase of recessive beneficial mutations is much smaller than rate of increase of dominant mutation- makes sense. 

In het advantage,

f(A) == (Sbb)/(Saa+Sbb)- equilibrium allele frequency is a function of the selection coefficients  

freq-dep selection- self incompatibility loci in plants are a notable example.    

--------------------------------------------

### Wednesday 25 November

**The fate of selected alleles** *in finite populations*    

They are affected by selection and drift- but how?   

Consider a new mutation that arises with an increase in fitness of 5% - S = 0.05   

The probability of fixation for a new mutation:  
$$u(s,N) = \frac{1-e^{-2s}}{1-e^{-4N}}$$
This is just a function of the selection coefficient and the population size.  

Given a population size of N, the p(fixation) is a function of the selection coefficient. If we plot, we see that p(fix) < p(i) for deleterious alleles; p(fix) > p(i) if adaptive. We also see that p(fixation) is quite small even for strongly adaptive mutations. So adaptive alleles are most likely going to go extinct, and deleterious mutants can stick around.  

If alleles do make it to fixation in finite/small populations, the fixation is achieved much more quickly than in the infinitely sized populations. ***Neato!***  

Strongly deleterious alleles are lost much faster than weakly deleterious alleles.  

For strongly selected alleles in big but not infinite population, p(fix) is ~2s.  
In the first few generations, the fate of the allele is strongly impacted by basic mendellian laws- this is the intuition behind why N doesn't reallllly matter too much. ***Explore this with simulations a bit more!!***  

-----------------------------------------

## Molecular population genetics of natural selection    

**Genetic signatures of selection**   

Vocab time!   
Divergence == sequence differences between species;   
Polymorphisms == sequence differences within a species.    

Kimura's Neutral theory builds from assumption that most mutations are completely neutral, the rest are strongly deleterious.   $F_{0}$ is the frequency of new mutations that are neutral; $1-F_{0}$ is the frequency of new mutations that are delet.  

"Rate of evolution" is independent of population size- **Why:**  

Rate of substitution = Rate of mutation * Probability of fixation  

k_g = (2Nv*f0) * (1/2N) == vt*f0    

So the intuition is that larger populations have more mutations coming in, but fewer go to fixation because 1/2N is smaller.  

Selective neutrality- F0 changes across genes- some genes need to be a lot more conserved, others not really- the latter are predicted to have higher F0.  

It takes 4N generations for a mutation to become fixed, given that it becomes fixed. But the rate of sequence evolution across the genome is independent of population size- think about this a **little more**.

**Positive selection on nonsynymous mutations:**   
Synonymous substitutions accumulate at some rate $ds$.   

Nonsyn mutations may be under neutral, negative or positive selection.   

the ratio of dn/ds will tell us whether nonsynonymous sites are under selection.  

Chimp genome paper showed that there dN/dS << 1 -- purifying selection

Nielsen et al. found 733/8000 genes with dN/dS > 1 but none were significantly so.  

PRIM1 and FOXP2 (a forkhead txn factor - thought to be involved with "language"?)

dN/dS > 1 is pretty solid evidence of positive selection.  But it has low power- if one spot in a gene is under positive selection but there's a ton of background or negative selection going on then you are likely to have a type 2 error. 

### Detecting selection using polymorphisms.  

If there is a positively selected mutation on one chromosome that sweeps to fixation, the linked stuff will go along with it and becomes fixed - so the polymorphism in this region of the chromosome is decreasing if there is strong selection on the new mutation.  This signature has a specific time window- because even after a sweep the polymorphisms will accumulate.  

signatures are things like skew in site frequency spectrum (towards rare alleles or towards abundant derived alleles, reduction in diversity, differences in site freq between populations if local adaptation)   

Observed heterozygosity crashes in growth factor gene when there is strong selective sweep.   

Strongly negatiev Tajima's D indicates excess of low-frew alleles.  

If an allele is common, like 70-80%, then we expect it to be on a very long haplotype- since nothing beside it can change while it is being swept to fixation.   



Sweeps are less likely with higher recombination.  

-----------------------------------------

## 30 Nov 2015

Finishing up on signatures of selection:   

dN/dS was one of them- but only works for really old selection, best for negative selection      
selective sweeps- reduction in genetic variation around genes that are selected on.  
Changes in allele ferquency between ancient and modern DNA- lactase intolerance is an example.     

**But there are problems**    
These patterns can also be caused by demographic effects.    
skew toward rare alleles due to pop growth; reduction in diversity due to bottlenecks; bottlenecks can also generate long haplotype.   

**How to distinguish**   

This is hard!  
**Outlier approach**     
Demography impacts all loci- selection only affects some subset.  
So we can look for the most extreme loci.   
*implicitly assuming that drift is most important; selection is affecting a smaller number of things*  
This is pretty simplistic- we can get a lot of false negatives- signature of selection weaker? One gene will always be the most extreme for any statistic- doesn't necessarily mean that the locus is under selection. EG consider the density plot on HW1- there *is* a 95th percentile.  
If there's a lot of positive selection in the genome, this works pretty well- but if there is no positive selection, everything will be a false positive!  


**Model based**   
Use genome-wide data to estimate a model that explains the whole genome.   
Then, look for loci that are unusual under this fitted demographic model.  
*Loci that are weird relative to a demographic model*

***Selection scans are hard***- see Akey et al, where of the 5000 regions implicated in selection, 85% were only implicated in one study. This could be because most of the 5000 were false positives, or because different tests were used which have different powers to detect different types of selective pressures.   

Haplotype tests only helps described recently selected regions.  But if there is real old selection, haplotype test probably won't call it selection but dN/dS might get it right.   


### Case study      
There appears to be a genetic basis for the adaptation of Tibetans to their environment.   
2 D SFS- X axis is allele frequency in Tib, Y axis is allele frequency in Han.   
Most SNPs have pretty similar frequencies in Tib and Han.  

But some SNPs are at really high frequency in Tibetans but rare in Han Chinese.  Tibetan Branch Statistic- compare both T and H to Danish genome- the branch length is a function off how many SNPs are accumulated in the lineages.   

Generated a demographic model, simulated branch statistics based on this "null" demogrpahic model- and tested if genes' branch stats came up.  

*Do other high altitude populations show this?*   

Compared genomes of high- and low-altitude Ethiopians. There was a different gene going bonkers- but EPAS1 was no different.   

Denisoven story-  
The haplotype structure of Tib/Han Chinese looks kind of obvious. And if we compare Tib to Denisoven genome, we see that the Denisoven matches 

## Alternative models of adaptation     

Multi-locus control on a phenotype- no one gene goes to fixation, but all are constantly tweaked slightyly. Try to understand the polygenic adaptation slide.     

"Tall alleles" have 1.2% higher frequeny in northern Europe than in Southern Europe.  Distribution not centered at Zero- prehaps because there are even more SNPs driving height than we know.  Punchline is that tall alleles tend to be at higher frequencies in NEurope than in SEurope.  

## What determines amoount of genetic variation within a species

1. Population size;   
2. Bottlenecks and complicated demography;   
3. Life history traits may be important.   

4. Natural selection (reduce variation or balancing selection); purifying variation.   
5. Even if not all loci are selected; but there can be linkages.   

Given that $\theta = 4N\mu$, and a constant $\mu$, N should be a predictor of genetic diversity.     

0.01% to 8% is the range of genetic diversity reported in a paper.  But the disparity is not as high as census sizes (or population sizes.)  

If we sort by phylum, we see that census size may indeed drive the patterns- but if we look within phyla, there is a huge amount of variation present.  


***Background Selection***   

When removing deleterious alleles (purifying selection), diversity at neutral sites might be lost.    
Regions with low recombination tend to have less variation than regions with high recombination rates.  

During a sweep in a region with high recombination, the selected allele can go to high freq but can leave heterozygous sites in its wake.    

Correlation between diversity and the rate of recombination taken as evidence of high positive selection- when recomb low, diversity lost because of hard sweep.  

Background selection: some chromosomes get deleterious mutations, that gets eliminated- when that happens, neutral mutations on that haplotype go!   

Recombination not mutagenic in Drosophila- synonymous divergence across species not correlated to the recombination rate. And in regions of low recombination, there are more rare alleles- weak evidence of selection.    

If we plot K_a (i.e Dn) against Synonymous diveristy: 
  Genes that have high diversity could be the ones that were hit by positive selection.    
  Another signature of selection is that around a sweep there would be lower variation.  

13% of drosophila amino acids might be driven by selection- interesting.   

Kirk's work and the Yuroba thing can be driven by background selection too. 

Diversity close to/far from substitutions- near substitutions diveristy is probably lower than far away due to background selection acting universally.  


------------------------------------
The big point of Monday was that neutral genetic diversity can be impacted by selection. 

Genetic diversity & Census size estimates on 40 Eukaryotes- does linked selection have a stronger effect in larger populations? That would explain why species with larger census sizes don't necessarily show higher levels of diversity.  

Neutral diversity vs recombination rate- at low recombination rate sites, there is low neutral diversity after selection.  

For DMel (high Ncensus)- neutral diversity is driven down from its expected mean. But in horse, expected diversity is the same as the observed diversity- linkage to selected size unimportant. In large N species, we are underestimating neutral diversity due to linked selection (what we measure is less than if there truly is no selection). But we are not underestimating it in small Ncensus.   
Correlation between recomb and neutral diversity stronger in high Ncensus species than low Ncensus species. 

Species with bigger ranges have a bigger "impact of selection".   

But not sure whether this resolves questions about census size and diversity.   



------------------
Fitness effects of mutations  

Models of fitness effects:    
**Fischer's geometric model**  
Consider a population with some fitness optimum   
The population right now is not at the optimum.  
There is a mutation that moves the fitness of the population by some level. If the fitness is moved towards the optimum, the mutation is selected for.    
A mutation of large effect is more likely to be deleterious- especially so if the population is close to the optimum. Beneficial mutations are more likely to have small effects.    

**Wright's fitness landscape**    
Consider a fitness surface with a local and a global optimum.  A population may end up at a local peak, though, and get "stuck" there.    

Empirical use of these models is quite low.    

**Experimental approaches**   
*Mutation accumulation experiments*    
 Start with an ancestral line, allow populations to go through many generations, and then compete the lineages against each other to estimate the impact of the accumulated mutations.   
 In Viruses, many lethal   
 In Yeast, there is a peak at relative fitness == 1, but it is unclear that the mutations are all neutral- for instance, we know that even weak selection coefficients can drive dynamics.    
 Hietpas et al engineered all combinations of AA changes into yeast, and showed that most mutations are nearly neutral, a clump of deleterious, and none beneficial.    
 
 Fischer's geometric model supported by a Lenski experiment in which an environmental change (shift in medium) was followed by fitness going up (presumably due to new mutations confering fitness increases). *switching environment puts a population further away from the optimum in the geometric model*   
 
 But this is not good for believers of nearly-neutral   
 
**Indirect approaches- population genetics**    

*McDonald Kreitman tests*   
Compare # SNPs at synonymous/non-synonymous sites; get a ratio. Get a ratio of divergence (fixed differences) in the genome.  Compare the homogeneity. If SNP ratio higher than Divergence ratio, this might suggest that we are getting a lot of weakly deleterious SNPs into the population, but the SNPs are lost with thime.  

Lots of evidence for deleterious mutations!
 
*Site frequency spectrum*

Purifying selection affects SFS. Selection keeps deleterious mutations rare- lots more singletons than multiples.    

Degree of skewness to assume selection is tricky- if there is really deleterious mutations they just would get out of the population...   

Fitness distribution of mutations might be gamma distributed- lots of neutral mutations with  a tail of strongly deleterious ones. 

SFS from human data- lots fewer SNPs than what we would expect if all synonymous SNPs are neutral. But if we use Gamma distribution we can recreate SFS much better than if we use a single fixed Effect of Mutation.  

Inference is that 70-80% of new non-synonymous mutations are strongly deleterious. But most mutations that reach high frequency are neutral to nearly neutral.  

-----------------------------------------------

### How does genotype influence phenotype   

Individual level:   
"Phenotype = mean + genetic effects + environmental effects"   
Kind of like alpha-beta traits!!

Population level:   
"Population variance = genotypic variance + environmental variance"

pop.variance straightforward to measure;    
environmental variance not as straightforward, but exposing same genotype to environments can help, e.g. twin studies;  
genetic is the other part.     

**Heritability**     
***Broad Sense Heritability***     
$H^{2}$ = (genetic variance)/(phenotypic variance)- a property of the population under study- not necessarily of a trait.    

_What is genetic variance?_   

Genetic factors = additive effects + dominance effects     
*additive effects*: if we add a single copy of an allele, what is the new phenotype?     
*dominance effects*: this is what is left over in the heterozygote after accounting for additive effect.    

ditto genetic variance.   

**What if we have more than 1 locus**     

Consider a two-locus model   

Departure from a simple additive model is epistasis.   

***Narrow sense heritability***    
$h^{2}$ = (additive variance)/(phenotype variance)   
Just thinking about the additive stuff- ignoring epistasis and dominance effects.   

This captures the effect of a single allele on the phenotype- this is what you want to select on e.g. during breeding.    

The slope of mid-parent height - child height can get us a good estimate of narrow sense heritability.    

## Association studies    

Genotype a bunch of individuals with different phenotypes at a bunch of genetic markers across the genome- the more the better. Compare genotype frequencies of individuals with and without phenotype and do a test for homogeneity.   

Most effect sizes are 1-2 (1-2 fold increase in risk of having the disease. )

Most GWAS hits are falling in non-coding regions- possibly regulatory.  
Most GWAS hits are pretty common in population- but complicated by the fact that the methods are more likely to pick up common variants.   

Epistasis is probably lost in the statistics on population level variation.    

Missing heritability- narrow sense h^2 estimated from GWAS is always much lower than estimated from pedigree studies.   

Perhaps because GWAS misses a large swath of low-impact SNPs.  

