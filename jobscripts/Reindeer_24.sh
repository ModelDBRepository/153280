#!/bin/bash
#
#$ -q free64
#$ -pe openmp 64
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -N Reindeer_24
#$ -o ./jobscripts/Reindeer_24.$JOB_ID.o
#$ -M mariannejcase@gmail.com
#$ -m eas
#$ -R y

module load neuron/7.3
mpiexec -np 64 nrniv -mpi -nobanner -nogui ./jobscripts/Reindeer_24_run.hoc
cp ./jobscripts/Reindeer_24* ./results/Reindeer_24/
