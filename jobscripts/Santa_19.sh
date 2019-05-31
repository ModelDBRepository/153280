#!/bin/bash
#
#$ -q asom
#$ -pe openmp 64
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -N Santa_19
#$ -o ./jobscripts/Santa_19.$JOB_ID.o
#$ -M mariannejcase@gmail.com
#$ -m eas
#$ -R y

module load neuron/7.3
mpiexec -np 64 nrniv -mpi -nobanner -nogui ./jobscripts/Santa_19_run.hoc
cp ./jobscripts/Santa_19* ./results/Santa_19/
