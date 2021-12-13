#! /bin/bash
#SBATCH -J SVM-SC
#SBATCH --mail-type=END,FAIL 
#SBATCH --mail-user=khwong352-c@my.cityu.edu.hk
#SBATCH -N 1
#SBATCH -o /home/users/khwong352/FYP/sequence-classification_SVM.out
#SBATCH -p gpu1
#SBATCH --cpus-per-task=8

cd /home/users/khwong352/FYP
CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7
python sequence-classification_SVM.py 8
