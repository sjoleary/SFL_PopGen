#!/bin/bash

## FDIST island model coalescent simulations | individuals grouped by sample location in data set

# simulate 2 demes 
arlecore3522_64bit data/POPGEN/SFL.genotypes_arlequin.arp scr/FDIST_nsim20kndemes2.ars

# move and rename results files
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.genotypes_arlequin.res/fdist2_ObsOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2_nsim20kndemes2_ObsOut.txt
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.genotypes_arlequin.res/fdist2_simOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2_nsim20kndemes2_simOut.txt
rm -r /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.genotypes_arlequin.res


# simulate 4 demes
arlecore3522_64bit data/POPGEN/SFL.genotypes_arlequin.arp scr/FDIST_nsim20kndemes4.ars

# move and rename results files
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.genotypes_arlequin.res/fdist2_ObsOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2_nsim20kndemes4_ObsOut.txt
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.genotypes_arlequin.res/fdist2_simOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2_nsim20kndemes4_simOut.txt
rm -r /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.genotypes_arlequin.res


# simulate 7 demes
arlecore3522_64bit data/POPGEN/SFL.genotypes_arlequin.arp scr/FDIST_nsim20kndemes7.ars
# move and rename results files
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.genotypes_arlequin.res/fdist2_ObsOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2_nsim20kndemes7_ObsOut.txt
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.genotypes_arlequin.res/fdist2_simOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2_nsim20kndemes7_simOut.txt
rm -r /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.genotypes_arlequin.res


# simulate 25 demes
arlecore3522_64bit data/POPGEN/SFL.genotypes_arlequin.arp scr/FDIST_nsim20kndemes25.ars
# move and rename results files
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.genotypes_arlequin.res/fdist2_ObsOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2_nsim20kndemes25_ObsOut.txt
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.genotypes_arlequin.res/fdist2_simOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2_nsim20kndemes25_simOut.txt
rm -r /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.genotypes_arlequin.res


# simulate 50 demes
arlecore3522_64bit data/POPGEN/SFL.genotypes_arlequin.arp scr/FDIST_nsim20kndemes50.ars
# move and rename results files
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.genotypes_arlequin.res/fdist2_ObsOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2_nsim20kndemes50_ObsOut.txt
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.genotypes_arlequin.res/fdist2_simOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2_nsim20kndemes50_simOut.txt
rm -r /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.genotypes_arlequin.res


# simulate 100 demes
arlecore3522_64bit data/POPGEN/SFL.genotypes_arlequin.arp scr/FDIST_nsim20kndemes100.ars
# move and rename results files
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.genotypes_arlequin.res/fdist2_ObsOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2_nsim20kndemes100_ObsOut.txt
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.genotypes_arlequin.res/fdist2_simOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2_nsim20kndemes100_simOut.txt
rm -r /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.genotypes_arlequin.res


## FDIST hierarchical island model coalescent simulations | individuals grouped by sample location in data set

# 2 groups w/5 demes each
arlecore3522_64bit data/POPGEN/SFL.genotypes_arlequin.arp scr/FDIST_hier_nsim20kngrp2ndemes5.ars
# move and rename results files
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.genotypes_arlequin.res/fdist2_ObsOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2_nsim20kngrp2ndemes5_ObsOut.txt
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.genotypes_arlequin.res/fdist2_simOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2_nsim20kngrp2ndemes5_simOut.txt
rm -r /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.genotypes_arlequin.res


# 4 groups w/3 demes each
arlecore3522_64bit data/POPGEN/SFL.genotypes_arlequin.arp scr/FDIST_hier_nsim20kngrp4ndemes3.ars
# move and rename results files
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.genotypes_arlequin.res/fdist2_ObsOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2_nsim20kngrp4ndemes3_ObsOut.txt
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.genotypes_arlequin.res/fdist2_simOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2_nsim20kngrp4ndemes3_simOut.txt
rm -r /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.genotypes_arlequin.res


# 10 groups w/25 demes each
arlecore3522_64bit data/POPGEN/SFL.genotypes_arlequin.arp scr/FDIST_hier_nsim20kngrp10ndemes25.ars
# move and rename results files
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.genotypes_arlequin.res/fdist2_ObsOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2_nsim20kngrp10ndemes25_ObsOut.txt
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.genotypes_arlequin.res/fdist2_simOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2_nsim20kngrp10ndemes25_simOut.txt
rm -r /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.genotypes_arlequin.res


## FDIST island model coalescent simulations | individuals grouped by region in data set

# simulate 4 demes
arlecore3522_64bit data/POPGEN/SFL.reg.genotypes_arlequin.arp scr/FDIST_nsim20kndemes4.ars

# move and rename results files
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.reg.genotypes_arlequin.res/fdist2_ObsOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2.reg_nsim20kndemes4_ObsOut.txt
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.reg.genotypes_arlequin.res/fdist2_simOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2.reg_nsim20kndemes4_simOut.txt
rm -r /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.reg.genotypes_arlequin.res

## FDIST island model coalescent simulations | individuals grouped by region in data set

# simulate 2 demes
arlecore3522_64bit data/POPGEN/SFL.oce.genotypes_arlequin.arp scr/FDIST_nsim20kndemes2.ars

# move and rename results files
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.oce.genotypes_arlequin.res/fdist2_ObsOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2.oce_nsim20kndemes2_ObsOut.txt
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.oce.genotypes_arlequin.res/fdist2_simOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2.oce_nsim20kndemes2_simOut.txt
rm -r /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.oce.genotypes_arlequin.res
