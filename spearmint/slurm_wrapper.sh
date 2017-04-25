#!/bin/sh

# This call Spearmint launcher after setting all SLURM requirments.

#SBATCH --time=10:00:00
#SBATCH --account=YOUR_ACCOUNT
#SBATCH --gres=gpu:1
#SBATCH --mail-user=YOUR_USER
#SBATCH --mail-type=END

# Load all modules 
module load anaconda/2-4.2.0
module load cudnn/5.1
module load cuda80/blas

echo "$@"

srun --account=katt python /rigel/home/gm2597/Spearmint/spearmint/launcher.py "$@"

# End of script


