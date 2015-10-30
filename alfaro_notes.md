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





