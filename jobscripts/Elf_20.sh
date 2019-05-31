#!/bin/bash
#
#$ -q pub64
#$ -pe openmp 64
#$ -cwd
#$ -j y
#$ -S /bin/bash
#$ -N Elf_20
#$ -o ./jobscripts/Elf_20.$JOB_ID.o
#$ -M mariannejcase@gmail.com
#$ -m eas
#$ -R y

module load neuron/7.3
mpiexec -np 64 nrniv -mpi -nobanner -nogui ./jobscripts/Elf_20_run.hoc
cp ./jobscripts/Elf_20* ./results/Elf_20/
