#!/bin/bash
#SBATCH --nodes=1 
#SBATCH --ntasks-per-node=128
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
timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_HSE06_freq &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_HSE06_freq &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_HSE06_cpks &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_HSE06_cpks &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_HSE06_elapiezo &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_HSE06_elapiezo &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBE_freq &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBE_freq &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBE_cpks &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBE_cpks &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBE_elapiezo &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBE_elapiezo &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBE0_freq &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBE0_freq &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBE0_cpks &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBE0_cpks &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBE0_elapiezo &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBE0_elapiezo &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBESOL_freq &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBESOL_freq &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBESOL_cpks &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBESOL_cpks &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBESOL_elapiezo &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBESOL_elapiezo &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBESOL0_freq &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBESOL0_freq &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBESOL0_cpks &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBESOL0_cpks &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_PBESOL0_elapiezo &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_PBESOL0_elapiezo &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_LDA_freq &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_LDA_freq &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_LDA_cpks &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_LDA_cpks &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_LDA_elapiezo &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_LDA_elapiezo &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_M06_freq &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_M06_freq &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_M06_cpks &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_M06_cpks &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_M06_elapiezo &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_M06_elapiezo &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_BLYP_freq &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_BLYP_freq &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_BLYP_cpks &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_BLYP_cpks &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_BLYP_elapiezo &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_BLYP_elapiezo &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_B3LYP_freq &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_B3LYP_freq &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_B3LYP_cpks &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_B3LYP_cpks &
wait

timeout 2876m /work/e05/e05/bcamino/runCRYSTAL/Pcry_slurm GaP_B3LYP_elapiezo &
wait
/work/e05/e05/bcamino/runCRYSTAL/post_proc_slurm crys GaP_B3LYP_elapiezo &
wait

