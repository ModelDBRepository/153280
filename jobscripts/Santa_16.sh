#!/bin/bash
#
#$ -q pub64
#$ -pe openmp 64
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -N Santa_16
#$ -o ./jobscripts/Santa_16.$JOB_ID.o
#$ -M mariannejcase@gmail.com
#$ -m eas
#$ -R y

module load neuron/7.3
mpiexec -np 64 nrniv -mpi -nobanner -nogui ./jobscripts/Santa_16_run.hoc
cp ./jobscripts/Santa_16* ./results/Santa_16/
