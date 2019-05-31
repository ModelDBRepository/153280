#!/bin/bash
#
#$ -q pub64
#$ -pe openmp 64
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -N Elf_17
#$ -o ./jobscripts/Elf_17.$JOB_ID.o
#$ -M mariannejcase@gmail.com
#$ -m eas
#$ -R y

module load neuron/7.3
mpiexec -np 64 nrniv -mpi -nobanner -nogui ./jobscripts/Elf_17_run.hoc
cp ./jobscripts/Elf_17* ./results/Elf_17/
