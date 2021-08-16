#!/bin/bash

## FDIST island model coalescent simulations | individuals grouped by sample location in data set

# simulate 2 demes 
arlecore3522_64bit data/POPGEN/SFL.GULF.genotypes_arlequin.arp scr/FDIST_nsim20kndemes2.ars

# move and rename results files
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.GULF.genotypes_arlequin.res/fdist2_ObsOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2_GULF_nsim20kndemes2_ObsOut.txt
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.GULF.genotypes_arlequin.res/fdist2_simOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2_GULF_nsim20kndemes2_simOut.txt
rm -r /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.GULF.genotypes_arlequin.res


# simulate 5 demes
arlecore3522_64bit data/POPGEN/SFL.GULF.genotypes_arlequin.arp scr/FDIST_nsim20kndemes5.ars

# move and rename results files
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.GULF.genotypes_arlequin.res/fdist2_ObsOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2_GULF_nsim20kndemes4_ObsOut.txt
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.GULF.genotypes_arlequin.res/fdist2_simOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2_GULF_nsim20kndemes4_simOut.txt
rm -r /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.GULF.genotypes_arlequin.res


# simulate 25 demes
arlecore3522_64bit data/POPGEN/SFL.GULF.genotypes_arlequin.arp scr/FDIST_nsim20kndemes25.ars
# move and rename results files
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.GULF.genotypes_arlequin.res/fdist2_ObsOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2_GULF_nsim20kndemes25_ObsOut.txt
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.GULF.genotypes_arlequin.res/fdist2_simOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2_GULF_nsim20kndemes25_simOut.txt
rm -r /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.GULF.genotypes_arlequin.res


# simulate 50 demes
arlecore3522_64bit data/POPGEN/SFL.GULF.genotypes_arlequin.arp scr/FDIST_nsim20kndemes50.ars
# move and rename results files
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.GULF.genotypes_arlequin.res/fdist2_ObsOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2_GULF_nsim20kndemes50_ObsOut.txt
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.GULF.genotypes_arlequin.res/fdist2_simOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2_GULF_nsim20kndemes50_simOut.txt
rm -r /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.GULF.genotypes_arlequin.res


# simulate 100 demes
arlecore3522_64bit data/POPGEN/SFL.GULF.genotypes_arlequin.arp scr/FDIST_nsim20kndemes100.ars
# move and rename results files
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.GULF.genotypes_arlequin.res/fdist2_ObsOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2_GULF_nsim20kndemes100_ObsOut.txt
cp /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.GULF.genotypes_arlequin.res/fdist2_simOut.txt /home/soleary/FLOUNDER/SFL_PopGen/results/fdist2_GULF_nsim20kndemes100_simOut.txt
rm -r /home/soleary/FLOUNDER/SFL_PopGen/data/POPGEN/SFL.GULF.genotypes_arlequin.res
