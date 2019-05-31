#!/bin/bash
#
#$ -q asom
#$ -pe openmp 64
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -N Santa_15
#$ -o ./jobscripts/Santa_15.$JOB_ID.o
#$ -M mariannejcase@gmail.com
#$ -m eas
#$ -R y

module load neuron/7.3
mpiexec -np 64 nrniv -mpi -nobanner -nogui ./jobscripts/Santa_15_run.hoc
cp ./jobscripts/Santa_15* ./results/Santa_15/
