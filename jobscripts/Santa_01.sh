#!/bin/bash
#
#$ -q free64
#$ -pe openmp 64
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -N Santa_01
#$ -o ./jobscripts/Santa_01.$JOB_ID.o
#$ -M mariannejcase@gmail.com
#$ -m eas
#$ -R y

module load neuron/7.3
mpiexec -np 64 nrniv -mpi -nobanner -nogui ./jobscripts/Santa_01_run.hoc
cp ./jobscripts/Santa_01* ./results/Santa_01/
