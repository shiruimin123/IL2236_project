#!/bin/sh
filepath='../../IL2236_project/verify/figure1/dor'
#i=0
#while [ $i -le 0 ]
#do
#    capacity=$( echo " $i*0.001" | bc )
#    replacment="injection_rate = $capacity;" 
#    sed -i "/^injection_rate = */c$replacment" ../../IL2236_project/verify/figure1/dor/mesh88_lat
#    ./booksim ../../IL2236_project/verify/figure1/dor/mesh88_lat > ../../IL2236_project/verify/figure1/dor/$capacity.txt
#    let i++
#    echo "$capacity finished!!"
#done
grep -A 2 "Overall Traffic Statistics" $filepath/.* > $filepath/tmp.txt
grep "latency average = " $filepath/tmp.txt > $filepath/results_tmp.txt
awk -F'[ .]+' '{print "0."$4,$9"."$10}' $filepath/results_tmp.txt > $filepath/results.txt