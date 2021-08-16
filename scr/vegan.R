
# function to extract and scale allele scores ====

# rda object
# number of axis

rda_alleles <- function(rda, n) {
  
  # extract allele loadings
  loadings <- as.data.frame(rda$CCA$v) %>%
    rownames_to_column("ALLELE_NAME") %>%
    separate(ALLELE_NAME, into = c("LOCUS", "ALLELE"), sep = "\\.", remove = FALSE)
  
  # scale by eigenvalues
  scale <- scores(rda, 1:n, display = "species", scaling = "species") %>%
    as.data.frame()
  
  loadings <- bind_cols(loadings, scale)
  
  # scale by square root of eigenvalues
  scale <- scores(rda, 1:n, display = "species", scaling = "symmetric") %>%
    as.data.frame(scale$default)
  
  loadings <- bind_cols(loadings, scale)
  
  # fix column names
  col <- c("ALLELE_NAME", "LOCUS", "ALLELE", 
           paste0("RDA", seq(1:n)), 
           paste0("RDA", seq(1:n), "_SCALED1"), 
           paste0("RDA", seq(1:n), "_SCALED3"))
  
  colnames(loadings) <- col
  
  loadings
  
}

# function to extract individual loadings
rda_indv <- function(rda, n){
  
  # extract individual loadings (LC)
  lc <- as.data.frame(rda$CCA$u) %>%
    rownames_to_column("LIB_ID") %>%
    magrittr::set_names(c("LIB_ID", paste0("RDA", seq(1:n), "_LC")))
  # scale by eigenvalues
  scale <- scores(rda, 1:n, display = "lc", scaling = "sites") %>%
    as.data.frame() %>%
    rownames_to_column("LIB_ID") %>%
    magrittr::set_names(c("LIB_ID", paste0("RDA", seq(1:n), "_LC_SCALED1"))) %>%
    left_join(lc)
  # symmetric scaling by square root of eigenvalues
  lc <- scores(rda, 1:n, display = "lc", scaling = "symmetric") %>%
    as.data.frame() %>%
    rownames_to_column("LIB_ID") %>%
    magrittr::set_names(c("LIB_ID", paste0("RDA", seq(1:n), "_LC_SCALED3"))) %>%
    left_join(scale)
  # extract individual loadings (WA)
  wa <- as.data.frame(rda$CCA$wa) %>%
    rownames_to_column("LIB_ID") %>%
    magrittr::set_names(c("LIB_ID", paste0("RDA", seq(1:n), "_WA")))
  # scale by eigenvalues
  scale <- scores(rda, 1:n, display = "wa", scaling = "sites") %>%
    as.data.frame() %>%
    rownames_to_column("LIB_ID") %>%
    magrittr::set_names(c("LIB_ID", paste0("RDA", seq(1:n), "_WA_SCALED1"))) %>%
    left_join(wa)
  # symmetric scaling by square root of eigenvalues
  wa <- scores(rda, 1:n, display = "wa", scaling = "symmetric") %>%
    as.data.frame() %>%
    rownames_to_column("LIB_ID") %>%
    magrittr::set_names(c("LIB_ID", paste0("RDA", seq(1:n), "_WA_SCALED3"))) %>%
    left_join(scale)
  # combine all loadings
  loadings <- left_join(lc, wa)
  
}


# function to extract alleles associated with rda axis ====

# loadings = vector of loadings
# z = number of standard deviations

associated_alleles <- function(loadings, z){
  
  lims <- mean(loadings) + c(-1, 1) * z * sd(loadings)     # find loadings +/-z sd from mean loading     
  loadings[loadings < lims[1] | loadings > lims[2]]        # locus names in these tails
  
}
