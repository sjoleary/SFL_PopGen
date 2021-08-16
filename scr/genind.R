## ------------------------------------------------------------------------- ##
# ---------------  format individual names in genind object ----------------- #

library(adegenet)

# arguments: gen (genind object), file (genepop file path, as "../file.gen")
# new adegenet package formats individual names

# genind.ind.names <- function(gen, file)
# {
#   # Count the number of loci in the file
#   num.loci <- length(locNames(gen))
#   
#   # read in genepop file as table, (skip header, list of loci, first 'POP')
#   ind.tab <- read.table(file, skip = num.loci+2, fill=TRUE)
#   
#   # Remove remaining 'POP' lines (rows) in table
#   ind.tab <- subset(ind.tab, V1 !='POP')
#   
#   # Return the column of individual names as list of characters
#   inds <- ind.tab$V1
#   
#   # Remove the trailing comma
#   inds <- gsub(',', '', inds)
# 
#   # assign new list of individual (genotype) names to genind object
#   indNames(gen) <- inds
# }
## ------------------------------------------------------------------------- ##


## ------------------------------------------------------------------------- ##
# --------------------  filter loci from genind object ---------------------- #

# arguments: gen (genind object), removeloc (vector with loci to be removed)

genind.rem.loci <- function(gen, removeloc)
{
  all_loci <- locNames(gen)
  keeploc <- setdiff(all_loci, removeloc)
  gen <- gen[loc = keeploc]
}
## ------------------------------------------------------------------------- ##


## ------------------------------------------------------------------------- ##
# ---------------  filter individuals from genind object -------------------- #

# arguments: gen (genind object), removeInd (vector with individuals to be removed)

gen.ind.rem.Ind <- function(gen, removeInd)
{
  gen <- gen[!row.names(gen@tab) %in% removeInd]
}
## ------------------------------------------------------------------------- ##


## ------------------------------------------------------------------------- ##
# ----------------- load Sample meta data as strata ------------------------- #

# arguments: gen (genind object), SampleInfo (data frame with meta data)

load.strata <- function(gen, SampleInfo){
  
  Inds <- as.data.frame(indNames(gen)) %>%
    rename(LIB_ID = `indNames(gen)`)
  
  Inds$LIB_ID <- as.character(Inds$LIB_ID)
  
  GTF_Strata <- left_join(Inds, SampleInfo) %>%
    distinct()
  
  strata(gen) <- GTF_Strata
  gen
}

## ------------------------------------------------------------------------- ##


## ------------------------------------------------------------------------- ##
# ------------------------------  function ---------------------------------- #

## ------------------------------------------------------------------------- ##
