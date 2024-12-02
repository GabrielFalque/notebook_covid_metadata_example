#!/bin/bash

while getopts i:o: option
do 
    case "${option}"
        in
        i)input_file=${OPTARG};;
        o)output_file=${OPTARG};;
    esac
done

header=true
total_count=`wc --lines < $input_file`
counter=0
while IFS= read -r lineage
do

    if [ "$header" = true ]
    then
        datasets summary virus genome taxon SARS-CoV-2 --geo-location Africa --lineage $lineage \
        --as-json-lines | dataformat tsv virus-genome \
        --fields accession,geo-location,geo-region,completeness,length,virus-pangolin,isolate-collection-date \
        >> $output_file
        header=false
        
    else
        datasets summary virus genome taxon SARS-CoV-2 --geo-location Africa --lineage $lineage \
        --as-json-lines | dataformat tsv virus-genome --elide-header \
        --fields accession,geo-location,geo-region,completeness,length,virus-pangolin,isolate-collection-date \
        >> $output_file
        header=false

    fi
    counter=$((counter+1))
    echo "$lineage  $counter/$total_count"
done < "$input_file"