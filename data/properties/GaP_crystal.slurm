#!/bin/bash
#SBATCH --nodes=1 
#SBATCH --ntasks-per-node=32  
#SBATCH --cpus-per-task=1
#SBATCH --time=00:20:00

# Replace [budget code] below with your full project code
#SBATCH --account=e05-power-smw
#SBATCH --partition=standard
#SBATCH --qos=short    
#SBATCH --export=none

module load epcc-job-env
module load other-software
module load crystal

# Address the memory leak
export FI_MR_CACHE_MAX_COUNT=0

# Run calculations
timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_HSE06_lfdc GaP_HSE06_freq &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_HSE06_lfdc &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBE_lfdc GaP_PBE_freq &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBE_lfdc &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBE0_lfdc GaP_PBE0_freq &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBE0_lfdc &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBESOL_lfdc GaP_PBESOL_freq &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBESOL_lfdc &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBESOL0_lfdc GaP_PBESOL0_freq &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBESOL0_lfdc &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_LDA_lfdc GaP_LDA_freq &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_LDA_lfdc &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_M06_lfdc GaP_M06_freq &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_M06_lfdc &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_BLYP_lfdc GaP_BLYP_freq &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_BLYP_lfdc &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_B3LYP_lfdc GaP_B3LYP_freq &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_B3LYP_lfdc &
wait

