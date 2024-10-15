#!/bin/bash

cd /fred/oz002/users/mmiles/MPTA_planet_checker

i=0; 

while [ $i > -1 ]; 
do  
    squeue --format="%.18i %.9P %.100j %.8u %.8T %.10M %.9l %.6D %R" -a --me | grep milan | awk '{print $3}' >> /fred/oz002/users/mmiles/MPTA_planet_checker/MPLANETS_slurm.list
    for psr in $(cd /fred/oz002/users/mmiles/MPTA_planet_checker/partim/ && ls *tim); 
    do 
        echo ${psr%.tim}
        sh /home/mmiles/soft/MPTA_planets/rerun_noise_live400_pbilby_MPLANETS_roemer_and_general.sh ${psr%.tim};
    done
    rm /fred/oz002/users/mmiles/MPTA_planet_checker/MPLANETS_slurm.list
    rm /fred/oz002/users/mmiles/MPTA_planet_checker/partim/core*
    rm /fred/oz002/users/mmiles/MPTA_planet_checker/core*
    sleep 10m    
done

