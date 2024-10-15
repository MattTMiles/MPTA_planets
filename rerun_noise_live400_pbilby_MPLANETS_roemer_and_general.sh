#!/bin/bash

# rerun_noise_megaslurm.sh psr
# runs all unfinished noise models

psr=$1
cd /fred/oz002/users/mmiles/MPTA_planet_checker

req_mem=$(cat /fred/oz002/users/mmiles/MPTA_planet_checker/psr_memory.txt | grep ${psr} | awk '{print $2}')



# inc. runs with a fixed gamma and amp SGWB

# inc. runs with a fixed gamma SGWB

if [[ ! -f "/fred/oz002/users/mmiles/MPTA_planet_checker/out_pbilby_MPLANETS/${psr}/${psr}_PMWN_ROEMER_1/PMWN_ROEMER_1_final_res.json" ]] && [[ ! "${psr}_PMWN_ROEMER_1" == $(grep -w -m 1 ^${psr}_PMWN_ROEMER_1 /fred/oz002/users/mmiles/MPTA_planet_checker/MPLANETS_slurm.list) ]]; then
    sbatch --mem-per-cpu=${req_mem}GB -J ${psr}_PMWN_ROEMER_1 /home/mmiles/soft/MPTA_planets/pbilby_apptainer_MPLANETS_slurm.sh ${psr} PMWN_ROEMER_1 "efac equad ecorr planet_search_roemer_1 extra_red"
    echo "rerunning ${psr}_PMWN_ROEMER_1" >> /fred/oz002/users/mmiles/MPTA_planet_checker/MPLANETS_slurm.list
    #((counter++))
fi

if [[ ! -f "/fred/oz002/users/mmiles/MPTA_planet_checker/out_pbilby_MPLANETS/${psr}/${psr}_PMWN_ROEMER_2/PMWN_ROEMER_2_final_res.json" ]] && [[ ! "${psr}_PMWN_ROEMER_2" == $(grep -w -m 1 ^${psr}_PMWN_ROEMER_2 /fred/oz002/users/mmiles/MPTA_planet_checker/MPLANETS_slurm.list) ]]; then
    sbatch --mem-per-cpu=${req_mem}GB -J ${psr}_PMWN_ROEMER_2 /home/mmiles/soft/MPTA_planets/pbilby_apptainer_MPLANETS_slurm.sh ${psr} PMWN_ROEMER_2 "efac equad ecorr planet_search_roemer_2 extra_red"
    echo "rerunning ${psr}_PMWN_ROEMER_2" >> /fred/oz002/users/mmiles/MPTA_planet_checker/MPLANETS_slurm.list
    #((counter++))
fi

if [[ ! -f "/fred/oz002/users/mmiles/MPTA_planet_checker/out_pbilby_MPLANETS/${psr}/${psr}_PMWN_ROEMER_3/PMWN_ROEMER_3_final_res.json" ]] && [[ ! "${psr}_PMWN_ROEMER_3" == $(grep -w -m 1 ^${psr}_PMWN_ROEMER_3 /fred/oz002/users/mmiles/MPTA_planet_checker/MPLANETS_slurm.list) ]]; then
    sbatch --mem-per-cpu=${req_mem}GB -J ${psr}_PMWN_ROEMER_3 /home/mmiles/soft/MPTA_planets/pbilby_apptainer_MPLANETS_slurm.sh ${psr} PMWN_ROEMER_3 "efac equad ecorr planet_search_roemer_3 extra_red"
    echo "rerunning ${psr}_PMWN_ROEMER_3" >> /fred/oz002/users/mmiles/MPTA_planet_checker/MPLANETS_slurm.list
    #((counter++))
fi

if [[ ! -f "/fred/oz002/users/mmiles/MPTA_planet_checker/out_pbilby_MPLANETS/${psr}/${psr}_PMWN_ROEMER_4/PMWN_ROEMER_4_final_res.json" ]] && [[ ! "${psr}_PMWN_ROEMER_4" == $(grep -w -m 1 ^${psr}_PMWN_ROEMER_4 /fred/oz002/users/mmiles/MPTA_planet_checker/MPLANETS_slurm.list) ]]; then
    sbatch --mem-per-cpu=${req_mem}GB -J ${psr}_PMWN_ROEMER_4 /home/mmiles/soft/MPTA_planets/pbilby_apptainer_MPLANETS_slurm.sh ${psr} PMWN_ROEMER_4 "efac equad ecorr planet_search_roemer_4 extra_red"
    echo "rerunning ${psr}_PMWN_ROEMER_4" >> /fred/oz002/users/mmiles/MPTA_planet_checker/MPLANETS_slurm.list
    #((counter++))
fi

if [[ ! -f "/fred/oz002/users/mmiles/MPTA_planet_checker/out_pbilby_MPLANETS/${psr}/${psr}_PMWN_ROEMER_5/PMWN_ROEMER_5_final_res.json" ]] && [[ ! "${psr}_PMWN_ROEMER_5" == $(grep -w -m 1 ^${psr}_PMWN_ROEMER_5 /fred/oz002/users/mmiles/MPTA_planet_checker/MPLANETS_slurm.list) ]]; then
    sbatch --mem-per-cpu=${req_mem}GB -J ${psr}_PMWN_ROEMER_5 /home/mmiles/soft/MPTA_planets/pbilby_apptainer_MPLANETS_slurm.sh ${psr} PMWN_ROEMER_5 "efac equad ecorr planet_search_roemer_5 extra_red"
    echo "rerunning ${psr}_PMWN_ROEMER_5" >> /fred/oz002/users/mmiles/MPTA_planet_checker/MPLANETS_slurm.list
    #((counter++))
fi

if [[ ! -f "/fred/oz002/users/mmiles/MPTA_planet_checker/out_pbilby_MPLANETS/${psr}/${psr}_PMWN_ROEMER_6/PMWN_ROEMER_6_final_res.json" ]] && [[ ! "${psr}_PMWN_ROEMER_6" == $(grep -w -m 1 ^${psr}_PMWN_ROEMER_6 /fred/oz002/users/mmiles/MPTA_planet_checker/MPLANETS_slurm.list) ]]; then
    sbatch --mem-per-cpu=${req_mem}GB -J ${psr}_PMWN_ROEMER_6 /home/mmiles/soft/MPTA_planets/pbilby_apptainer_MPLANETS_slurm.sh ${psr} PMWN_ROEMER_6 "efac equad ecorr planet_search_roemer_6 extra_red"
    echo "rerunning ${psr}_PMWN_ROEMER_6" >> /fred/oz002/users/mmiles/MPTA_planet_checker/MPLANETS_slurm.list
    #((counter++))
fi

if [[ ! -f "/fred/oz002/users/mmiles/MPTA_planet_checker/out_pbilby_MPLANETS/${psr}/${psr}_PMWN_ROEMER_7/PMWN_ROEMER_7_final_res.json" ]] && [[ ! "${psr}_PMWN_ROEMER_7" == $(grep -w -m 1 ^${psr}_PMWN_ROEMER_7 /fred/oz002/users/mmiles/MPTA_planet_checker/MPLANETS_slurm.list) ]]; then
    sbatch --mem-per-cpu=${req_mem}GB -J ${psr}_PMWN_ROEMER_7 /home/mmiles/soft/MPTA_planets/pbilby_apptainer_MPLANETS_slurm.sh ${psr} PMWN_ROEMER_7 "efac equad ecorr planet_search_roemer_7 extra_red"
    echo "rerunning ${psr}_PMWN_ROEMER_7" >> /fred/oz002/users/mmiles/MPTA_planet_checker/MPLANETS_slurm.list
    #((counter++))
fi

if [[ ! -f "/fred/oz002/users/mmiles/MPTA_planet_checker/out_pbilby_MPLANETS/${psr}/${psr}_PMWN_ROEMER_8/PMWN_ROEMER_8_final_res.json" ]] && [[ ! "${psr}_PMWN_ROEMER_8" == $(grep -w -m 1 ^${psr}_PMWN_ROEMER_8 /fred/oz002/users/mmiles/MPTA_planet_checker/MPLANETS_slurm.list) ]]; then
    sbatch --mem-per-cpu=${req_mem}GB -J ${psr}_PMWN_ROEMER_8 /home/mmiles/soft/MPTA_planets/pbilby_apptainer_MPLANETS_slurm.sh ${psr} PMWN_ROEMER_8 "efac equad ecorr planet_search_roemer_8 extra_red"
    echo "rerunning ${psr}_PMWN_ROEMER_8" >> /fred/oz002/users/mmiles/MPTA_planet_checker/MPLANETS_slurm.list
    #((counter++))
fi

if [[ ! -f "/fred/oz002/users/mmiles/MPTA_planet_checker/out_pbilby_MPLANETS/${psr}/${psr}_PMWN_ROEMER_9/PMWN_ROEMER_9_final_res.json" ]] && [[ ! "${psr}_PMWN_ROEMER_9" == $(grep -w -m 1 ^${psr}_PMWN_ROEMER_9 /fred/oz002/users/mmiles/MPTA_planet_checker/MPLANETS_slurm.list) ]]; then
    sbatch --mem-per-cpu=${req_mem}GB -J ${psr}_PMWN_ROEMER_9 /home/mmiles/soft/MPTA_planets/pbilby_apptainer_MPLANETS_slurm.sh ${psr} PMWN_ROEMER_9 "efac equad ecorr planet_search_roemer_9 extra_red"
    echo "rerunning ${psr}_PMWN_ROEMER_9" >> /fred/oz002/users/mmiles/MPTA_planet_checker/MPLANETS_slurm.list
    #((counter++))
fi

if [[ ! -f "/fred/oz002/users/mmiles/MPTA_planet_checker/out_pbilby_MPLANETS/${psr}/${psr}_PMWN_PLANET_GENERAL/PMWN_PLANET_GENERAL_final_res.json" ]] && [[ ! "${psr}_PMWN_PLANET_GENERAL" == $(grep -w -m 1 ^${psr}_PMWN_PLANET_GENERAL /fred/oz002/users/mmiles/MPTA_planet_checker/MPLANETS_slurm.list) ]]; then
    sbatch --mem-per-cpu=${req_mem}GB -J ${psr}_PMWN_PLANET_GENERAL /home/mmiles/soft/MPTA_planets/pbilby_apptainer_MPLANETS_slurm.sh ${psr} PMWN_PLANET_GENERAL "efac equad ecorr planet_search_general extra_red"
    echo "rerunning ${psr}_PMWN_PLANET_GENERAL" >> /fred/oz002/users/mmiles/MPTA_planet_checker/MPLANETS_slurm.list
    #((counter++))
fi

if [[ ! -f "/fred/oz002/users/mmiles/MPTA_planet_checker/out_pbilby_MPLANETS_controlGroup/${psr}/${psr}_PMWN_ER_CONTROL/PMWN_ER_CONTROL_final_res.json" ]] && [[ ! "${psr}_PMWN_ER_CONTROL" == $(grep -w -m 1 ^${psr}_PMWN_ER_CONTROL /fred/oz002/users/mmiles/MPTA_planet_checker/MPLANETS_slurm.list) ]]; then
    sbatch --mem-per-cpu=${req_mem}GB -J ${psr}_PMWN_ER_CONTROL /home/mmiles/soft/MPTA_planets/pbilby_apptainer_MPLANETS_control_slurm.sh ${psr} PMWN_ER_CONTROL "efac equad ecorr pm_wn_er_control extra_red"
    echo "rerunning ${psr}_PMWN_ER_CONTROL" >> /fred/oz002/users/mmiles/MPTA_planet_checker/MPLANETS_slurm.list
    #((counter++))
fi

