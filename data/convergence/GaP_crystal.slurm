#!/bin/bash
#SBATCH --nodes=20 
#SBATCH --ntasks-per-node=64  
#SBATCH --cpus-per-task=1
#SBATCH --time=24:00:00

# Replace [budget code] below with your full project code
#SBATCH --account=e05-power-smw
#SBATCH --partition=standard
#SBATCH --qos=standard 
#SBATCH --export=none

module load epcc-job-env
module load other-software
module load crystal

# Address the memory leak
export FI_MR_CACHE_MAX_COUNT=0

# Run calculations
timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBE_phonons_5 GaP_PBE_phonons_5 &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBE_phonons_5 &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBE_phonons_bands_5 GaP_PBE_phonons_5 &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBE_phonons_bands_5 &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBE_phonons_doss_5 GaP_PBE_phonons_5 &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBE_phonons_doss_5 &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBE_phonons_6 GaP_PBE_phonons_6 &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBE_phonons_6 &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBE_phonons_bands_6 GaP_PBE_phonons_6 &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBE_phonons_bands_6 &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBE_phonons_doss_6 GaP_PBE_phonons_6 &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBE_phonons_doss_6 &
wait

