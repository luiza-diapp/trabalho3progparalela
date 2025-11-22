#!/bin/bash
#SBATCH -p debug
#SBATCH --exclusive
#SBATCH -N 1
#SBATCH -t 00:05:00

for i in $(seq 1 10)
do
    echo "Rodada $i "
    mpirun -np 2 ./knn_mpi_thread -q=128 -p=400000 -d=300 -k=1024 -t=8
    echo ""
done
-