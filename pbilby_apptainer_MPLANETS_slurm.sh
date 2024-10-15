#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --ntasks=16
#SBATCH --time=00:45:00
#SBATCH -o /fred/oz002/users/mmiles/MPTA_planet_checker/job_outfiles/%x.out
#SBATCH --mem-per-cpu=10000MB

ml gcc/12.2.0 openmpi/4.1.4

ml apptainer

cd /fred/oz002/users/mmiles/MPTA_planet_checker
touch "job_trackers/pbilby_${1}_${2}"
echo "job_trackers/pbilby_${1}_${2}"



i=0
while [ $i -lt 1 ]; do
    mpirun -np $SLURM_NTASKS apptainer run -B /fred,$HOME /fred/oz002/users/mmiles/apptainer_modern280824.sif python /home/mmiles/soft/GW/ozstar2/enterprise_run_pbilby.py -pulsar $1 -results $2 -noise_search $3 -sampler pbilby -partim /fred/oz002/users/mmiles/MPTA_planet_checker/partim/ -modelfile /fred/oz002/users/mmiles/MPTA_planet_checker/MPTA_DATA_noisemodels.json -noisefile /fred/oz002/users/mmiles/MPTA_planet_checker/MPTA_DATA_and_WN_values.json -nlive 400 -alt_dir out_pbilby_MPLANETS/${1}

    if [[ "$?" -eq 139 ]]; then
        echo "segfault !";
        rm /fred/oz002/users/mmiles/MPTA_planet_checker/core*
        rm /fred/oz002/users/mmiles/MPTA_planet_checker/partim/core*
    else echo "no segfault !";
        ((i++));
    fi;
done


cd /fred/oz002/users/mmiles/MPTA_planet_checker
rm -f "job_trackers/pbilby_${1}_${2}"

echo done