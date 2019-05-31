#!/bin/bash
#
#$ -q free64
#$ -pe openmp 64
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -N Reindeer_20
#$ -o ./jobscripts/Reindeer_20.$JOB_ID.o
#$ -M mariannejcase@gmail.com
#$ -m eas
#$ -R y

module load neuron/7.3
mpiexec -np 64 nrniv -mpi -nobanner -nogui ./jobscripts/Reindeer_20_run.hoc
cp ./jobscripts/Reindeer_20* ./results/Reindeer_20/
