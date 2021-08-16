## ------------------------------------------------------------------------- ##
# ------------------------------- plot Kstat -------------------------------- #

# argument: grp (output from find.clusters.genind() function in adegenet pckg)
#           k_clust - number of clusters chosen grp_GULF$stat


plot.Kstat <- function(grp, k_clust){
  Kstat <- as.data.frame(grp$Kstat) %>%
    rownames_to_column("K") %>%
    separate(K, c("temp", "K"), sep = "=") %>%
    rename(BIC = `grp$Kstat`) %>%
    select(K, BIC)
  
  Kstat$K <- as.numeric(Kstat$K)

  ggplot(Kstat, aes(x = K, y = BIC)) +
    geom_line() +
    geom_point(shape = 21, color = "black", fill = "dark grey", size = 4) + 
    geom_point(data = subset(Kstat, K == k_clust), shape = 19, size = 4, color = "red") +
    labs(x = "number of clusters K", y = "BIC") +
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
