#!/bin/sh

i=1
while [ $i -le 22 ]
do
    capacity=$( echo " $i*0.002" | bc )
    replacment="injection_rate = $capacity;" 
    sed -i "/^injection_rate = */c$replacment" ../../IL2236_project/verify/figure1/ROMM/mesh88_lat
    ./booksim ../../IL2236_project/verify/figure1/ROMM/mesh88_lat > ../../IL2236_project/verify/figure1/ROMM/$capacity.txt
    let i++
    echo "$capacity finished!!"
done
