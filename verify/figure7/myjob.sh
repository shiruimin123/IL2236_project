#!/bin/sh

i=1
while [ $i -le 20 ]
do
    capacity=$( echo " $i*0.001" | bc )
    replacment="injection_rate = $capacity;" 
    sed -i "/^injection_rate = */c$replacment" ../../IL2236_project/verify/figure1/dor/mesh88_lat
    ./booksim ../../IL2236_project/verify/figure1/dor/mesh88_lat > ../../IL2236_project/verify/figure1/dor/$capacity.txt
    let i++
    echo "$capacity finished!!"
done
