#!/bin/bash
#
#$ -q pub64
#$ -pe openmp 64
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -N Santa_21
#$ -o ./jobscripts/Santa_21.$JOB_ID.o
#$ -M mariannejcase@gmail.com
#$ -m eas
#$ -R y

module load neuron/7.3
mpiexec -np 64 nrniv -mpi -nobanner -nogui ./jobscripts/Santa_21_run.hoc
cp ./jobscripts/Santa_21* ./results/Santa_21/
