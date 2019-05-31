#!/bin/bash
#
#$ -q asom
#$ -pe openmp 64
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -N Santa_22
#$ -o ./jobscripts/Santa_22.$JOB_ID.o
#$ -M mariannejcase@gmail.com
#$ -m eas
#$ -R y

module load neuron/7.3
mpiexec -np 64 nrniv -mpi -nobanner -nogui ./jobscripts/Santa_22_run.hoc
cp ./jobscripts/Santa_22* ./results/Santa_22/
