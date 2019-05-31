#!/bin/bash
#
#$ -q free64
#$ -pe openmp 64
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -N Santa_03
#$ -o ./jobscripts/Santa_03.$JOB_ID.o
#$ -M mariannejcase@gmail.com
#$ -m eas
#$ -R y

module load neuron/7.3
mpiexec -np 64 nrniv -mpi -nobanner -nogui ./jobscripts/Santa_03_run.hoc
cp ./jobscripts/Santa_03* ./results/Santa_03/
