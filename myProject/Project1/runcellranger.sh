#!/bin/bash

b=$1
c=$2

List="file_list.txt"

#O_PATH=($(cut -s -f 1 $List))
O_PATH=($(cat $List))
I_PATH=/home/ytliu/NTUH_10xSC_data6/


for((i=$b;i <= $c ; i=i+1))
do

#echo ${O_PATH[$i]}
#echo ${I_PATH[$i]}

/mnt/isilonX200/r01621206/cellranger-3.1.0/cellranger count \
--sample=${O_PATH[$i]} \
--id=${O_PATH[$i]} \
--fastqs=$I_PATH \
--disable-ui \
--chemistry=SC3Pv2 \
--localcores=64 \
--transcriptome=/mnt/isilonX200/r01621206/cellranger_reference/refdata-cellranger-GRCh38-3.0.0/

echo ${O_PATH[$i]}

done