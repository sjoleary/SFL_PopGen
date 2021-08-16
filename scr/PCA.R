## ------------------------------------------------------------------------- ##
# ---------------------- Extract Eigenvalues  ------------------------------- #
 
# returns dataframe with Eigenvalues and %variance explained by each PC
# argument object class PCA (e.g. generated using adegenet)

eigenvalues <- function(PCA){
  eig <- data.frame(PCA$eig) %>%
    rownames_to_column("PC") %>%
    rename(Eigenvalue = `PCA.eig`) %>%
    mutate(Percent = Eigenvalue/sum(Eigenvalue)*100)
  eig$PC <- as.numeric(eig$PC)
  eig
}
## ------------------------------------------------------------------------- ##


## ------------------------------------------------------------------------- ##
# --------------------------  plot Eigenvalues ------------------------------ #
 
# plots Eigenvalues of top 50 PCs
# argument data frame with eigenvalues and % variance

plot.eigen <- function(eig){
  ggplot(eig[1:50, ], aes(x = PC, y = Eigenvalue)) +
    geom_bar(stat = "identity", color = "black", fill = "darkorange") +
    labs(x = "Principle Component", y = "Eigenvalue") +
    theme_classic() +
    theme(
      axis.text = element_text(size = 11),
      axis.title = element_text(size = 16),
      axis.title.y = element_text(vjust = 1.5),
      
      legend.position = "bottom",
      
      panel.background = element_rect(fill = "white", color = NA),
      panel.border = element_blank(),
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      strip.background = element_rect(fill = "grey95", color = "black"),
      strip.text.x = element_text(size = 16),
      strip.text.y = element_text(size = 16))
}
## ------------------------------------------------------------------------- ##

  
## ------------------------------------------------------------------------- ##
# -----------------  plot %variance explained by PCs ------------------------ #
 
# plots %variance explained by of top 25 PCs
# argument data frame with eigenvalues and % variance

plot.eigen.variance <- function(eig){
  ggplot(eig[1:25, ], aes(x = PC, y = Percent)) +
    geom_bar(stat = "identity", color = "black", fill = "darkorange") +
    labs(x = "Principle Component", y = "% Variance") +
    theme_classic() +
    theme(
      axis.text = element_text(size = 11),
      axis.title = element_text(size = 16),
      axis.title.y = element_text(vjust = 1.5),
      
      legend.position = "bottom",
      
      panel.background = element_rect(fill = "white", color = NA),
      panel.border = element_blank(),
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      strip.background = element_rect(fill = "grey95", color = "black"),
      strip.text.x = element_text(size = 16),
      strip.text.y = element_text(size = 16))
}
## ------------------------------------------------------------------------- ##


## ------------------------------------------------------------------------- ##
# ---------------------- PC loadings by individual -------------------------- #


# Individuals' contribution to PCs/calculate Loading per individual and PC
# names samples ID column LIB_ID - can change to Sample ID to be able to better
# join with SampleInfo data frame if needed

PC.ind <- function(PCA){
  PCA$li %>%
    rownames_to_column("LIB_ID") %>%
    mutate(Loading1 = Axis1^2) %>%
    mutate(Loading2 = Axis2^2) %>%
    mutate(Loading3 = Axis3^2)
}
## ------------------------------------------------------------------------- ##


## ------------------------------------------------------------------------- ##
# ----------------------- Contributing individuals -------------------------- #

# returns dataframe with top contributing individuals based on cut-off set 
# by determining quantile

contrib.ind <- function(PC_ind, quantile){
  
  # calculate cut-off values
  cutoff1 <- quantile(PC_ind$Loading1, quantile)
  cutoff2 <- quantile(PC_ind$Loading2, quantile)
  cutoff3 <- quantile(PC_ind$Loading3, quantile)
  
  # filter dataframes
  Cont_Ind1 <- filter(PC_ind, Loading1 >= cutoff1) %>%
    mutate(PC = "PC1")
  
  Cont_Ind2 <- filter(PC_ind, Loading2 >= cutoff2) %>%
    mutate(PC = "PC2")
  
  # join dataframes
  Cont_Ind <- full_join(Cont_Ind1, Cont_Ind2)
  
  Cont_Ind3 <- filter(PC_ind, Loading3 >= cutoff3) %>%
    mutate(PC = "PC3")
  
  # join dataframes
  Cont_Ind <- full_join(Cont_Ind, Cont_Ind3)
}


## ------------------------------------------------------------------------- ##


## ------------------------------------------------------------------------- ##
# ----------------------loading plot individuals ---------------------------- #

# loading plot individuals
# currently using LIB_ID can change to Sample_Id if necessary
# can change function to take name of sample id column?
loading.plot.ind <- function(PC_ind){
  ggplot(PC_ind, aes(x = LIB_ID, y = Loading1, color = REGION)) +
    geom_bar(stat = "identity") +
    labs(x = "Individual", y = "Loading Principle Component 1") +
    theme_classic() +
    theme(
      axis.text = element_text(size = 4),
      axis.text.x = element_blank(),
      axis.title = element_text(size = 16),
      axis.title.y = element_text(vjust = 1.5),
      
      legend.position = "bottom",
      
      panel.background = element_rect(fill = "white", color = NA),
      panel.border = element_blank(),
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      strip.background = element_rect(fill = "grey95", color = "black"),
      strip.text.x = element_text(size = 16),
      strip.text.y = element_text(size = 16))
  
  ggplot(PC_ind, aes(x = LIB_ID, y = Loading2, color = REGION)) +
    geom_bar(stat = "identity") +
    labs(x = "Individual", y = "Loading Principle Component 2") +
    theme_classic() +
    theme(
      axis.text = element_text(size = 4),
      axis.text.x = element_blank(),
      axis.title = element_text(size = 16),
      axis.title.y = element_text(vjust = 1.5),
      
      legend.position = "bottom",
      
      panel.background = element_rect(fill = "white", color = NA),
      panel.border = element_blank(),
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      strip.background = element_rect(fill = "grey95", color = "black"),
      strip.text.x = element_text(size = 16),
      strip.text.y = element_text(size = 16))
}
## ------------------------------------------------------------------------- ##


## ------------------------------------------------------------------------- ##
# -----------------------------loading PC1 ---------------------------------- #

# plots distribution of individuals along PC1

plot.loading.PC1 <- function(PC_ind){
  ggplot(PC_ind, aes(x = Axis1)) +
  geom_histogram(stat = "bin", binwidth = .25, 
                 color = "black", fill = "grey85") +
  labs(x = "Principle Component 1", y = "Number of Individuals") +
  theme_classic() +
  theme(
    axis.text = element_text(size = 11),
    axis.title = element_text(size = 16),
    axis.title.y = element_text(vjust = 1.5),
    
    legend.position = "bottom",
    
    panel.background = element_rect(fill = "white", color = NA),
    panel.border = element_blank(),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    strip.background = element_rect(fill = "grey95", color = "black"),
    strip.text.x = element_text(size = 16),
    strip.text.y = element_text(size = 16))
}

## ------------------------------------------------------------------------- ##


## ------------------------------------------------------------------------- ##
# -------------------------------  theme desc ------------------------------- #

## ------------------------------------------------------------------------- ##


## ------------------------------------------------------------------------- ##
# -------------------------------  theme desc ------------------------------- #

## ------------------------------------------------------------------------- ##


## ------------------------------------------------------------------------- ##
# -------------------------------  theme desc ------------------------------- #

## ------------------------------------------------------------------------- ##


## ------------------------------------------------------------------------- ##
# -------------------------------  theme desc ------------------------------- #

## ------------------------------------------------------------------------- ##


## ------------------------------------------------------------------------- ##
# -------------------------------  theme desc ------------------------------- #

## ------------------------------------------------------------------------- ##