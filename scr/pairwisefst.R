# PAIRWISE FST OCEANs ----

# set groups to compare
setPop(gen) <- ~OCEAN

# compute Fst matrix
mat.obs <- pairwise.fst(gen, res.type = "matrix")

temp <- as.data.frame(mat.obs)

write.table(temp, "results/ocean.fst", 
            col.names = TRUE, row.names = TRUE, quote = FALSE, sep = "\t")

# create list with NPERM matrices of permuted Fst values
NBPERM <- 1000
mat.perm <- lapply(1:NBPERM, function(i) pairwise.fst(gen, pop = sample(pop(gen)), 
                                                      res.type="matrix"))

# create list with each element = one test of class randest for each population pair
ppfst_pvalO <- list()
for(i in 1:(nrow(mat.obs)-1)){
  for(j in 2:nrow(mat.obs)){
    ppfst_pvalO[[paste(rownames(mat.obs)[i],rownames(mat.obs)[j],sep="-")]] <- as.randtest(na.omit(sapply(1:NBPERM, function(k) mat.perm[[k]][i,j])), mat.obs[i,j], alter="greater")
  }
}

# extract p-values and create dataframe
COMP <- c("GULF-ATL")
PVAL <- c(ppfst_pvalO$`GULF-ATL`$pvalue)

pval_OCEAN <- data.frame(COMP, PVAL)

write.table(pval_OCEAN, "results/ocean.fstpval", 
            col.names = TRUE, row.names = FALSE, quote = FALSE, sep = "\t")

# PAIRWISE FST REGIONs ----

# set populations to test
setPop(gen) <- ~REGION

# compute Fst matrix
mat.obs <- pairwise.fst(gen, res.type = "matrix")

temp <- as.data.frame(mat.obs)

write.table(temp, "results/region.fst", 
            col.names = TRUE, row.names = TRUE, quote = FALSE, sep = "\t")

# create list with NPERM matrices of permuted Fst values
NBPERM <- 1000
mat.perm <- lapply(1:NBPERM, function(i) pairwise.fst(gen, pop = sample(pop(gen)), 
                                                      res.type="matrix"))

# create list with each element = one test of class randest for each population pair
ppfst_pvalR <- list()
for(i in 1:(nrow(mat.obs)-1)){
  for(j in 2:nrow(mat.obs)){
    ppfst_pvalR[[paste(rownames(mat.obs)[i],rownames(mat.obs)[j],sep="-")]] <- as.randtest(na.omit(sapply(1:NBPERM, function(k) mat.perm[[k]][i,j])), mat.obs[i,j], alter="greater")
  }
}

COMP <- c("NE_GULF-SW_ATL", "NE_GULF-NW_GULF", "NE_GULF-M_ATL", 
          "SW_ATL-NW_GULF", "SW_ATL-M_ATL", 
          "NW_GULF-SW_ATL")
PVAL <- c(ppfst_pvalR$`NE_GULF-SW_ATL`$pvalue, 
          ppfst_pvalR$`NE_GULF-NW_GULF`$pvalue, 
          ppfst_pvalR$`NE_GULF-M_ATL`$pvalue, 
          ppfst_pvalR$`SW_ATL-NW_GULF`$pvalue, 
          ppfst_pvalR$`SW_ATL-M_ATL`$pvalue, 
          ppfst_pvalR$`NW_GULF-M_ATL`$pvalue)

pval_REGION <- data.frame(COMP, PVAL)

write.table(pval_REGION, "results/region.fstpval", 
            col.names = TRUE, row.names = FALSE, quote = FALSE, sep = "\t")

# PAIRWISE FST POPs ---

# set populations to test
setPop(gen) <- ~POP

# compute Fst matrix
mat.obs <- pairwise.fst(gen, res.type = "matrix")

temp <- as.data.frame(mat.obs)

write.table(temp, "results/pop.fst", 
            col.names = TRUE, row.names = TRUE, quote = FALSE, sep = "\t")

# create list with NPERM matrices of permuted Fst values
NBPERM <- 1000
mat.perm <- lapply(1:NBPERM, function(i) pairwise.fst(gen, pop = sample(pop(gen)), res.type="matrix"))

# create list with each element = one test of class randest for each population pair
ppfst_pvalP <- list()
for(i in 1:(nrow(mat.obs)-1)){
  for(j in 2:nrow(mat.obs)){
    ppfst_pvalP[[paste(rownames(mat.obs)[i],rownames(mat.obs)[j],sep="-")]] <- as.randtest(na.omit(sapply(1:NBPERM, function(k) mat.perm[[k]][i,j])), mat.obs[i,j], alter="greater")
  }
}

COMP <- c("AL-FL", "AL-FLA", "AL-LA", "AL-MS", "AL-SC", "AL-TX", 
          "FL-FLA", "FL-LA", "FL-MS", "FL-SC", "FL-TX", 
          "FLA-LA", "FLA-MS", "FLA-SC", "FLA-TX", 
          "LA-MS", "LA-SC", "LA-TX",
          "MS-SC", "MS-TX", 
          "SC-TX")
PVAL <- c(ppfst_pvalP$`AL-FL`$pvalue, ppfst_pvalP$`AL-FLA`$pvalue, ppfst_pvalP$`AL-LA`$pvalue, ppfst_pvalP$`AL-MS`$pvalue, ppfst_pvalP$`AL-SC`$pvalue, ppfst_pvalP$`AL-TX`$pvalue,
          ppfst_pvalP$`FL-FLA`$pvalue, ppfst_pvalP$`FL-LA`$pvalue, ppfst_pvalP$`FL-MS`$pvalue, ppfst_pvalP$`FL-SC`$pvalue, ppfst_pvalP$`FL-TX`$pvalue, 
          ppfst_pvalP$`FLA-LA`$pvalue, ppfst_pvalP$`FLA-MS`$pvalue, ppfst_pvalP$`FLA-SC`$pvalue, ppfst_pvalP$`FLA-TX`$pvalue,
          ppfst_pvalP$`LA-MS`$pvalue, ppfst_pvalP$`LA-SC`$pvalue, ppfst_pvalP$`LA-TX`$pvalue, 
          ppfst_pvalP$`MS-SC`$pvalue, ppfst_pvalP$`MS-TX`$pvalue,
          ppfst_pvalP$`SC-TX`$pvalue)

pval_POP <- data.frame(COMP, PVAL)

write.table(pval_POP, "results/pop.fstpval", col.names = TRUE, row.names = FALSE, quote = FALSE, sep = "\t")
