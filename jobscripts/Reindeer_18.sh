#!/bin/bash
#
#$ -q asom
#$ -pe openmp 64
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -N Reindeer_18
#$ -o ./jobscripts/Reindeer_18.$JOB_ID.o
#$ -M mariannejcase@gmail.com
#$ -m eas
#$ -R y

module load neuron/7.3
mpiexec -np 64 nrniv -mpi -nobanner -nogui ./jobscripts/Reindeer_18_run.hoc
cp ./jobscripts/Reindeer_18* ./results/Reindeer_18/
