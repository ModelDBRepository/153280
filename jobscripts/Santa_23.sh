#!/bin/bash
#
#$ -q asom
#$ -pe openmp 64
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -N Santa_23
#$ -o ./jobscripts/Santa_23.$JOB_ID.o
#$ -M mariannejcase@gmail.com
#$ -m eas
#$ -R y

module load neuron/7.3
mpiexec -np 64 nrniv -mpi -nobanner -nogui ./jobscripts/Santa_23_run.hoc
cp ./jobscripts/Santa_23* ./results/Santa_23/
