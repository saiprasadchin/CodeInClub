#! /bin/bash
echo -n " enter a no. "
read n
for i in $(seq 1 $n)
do
 [ $(expr $n / $i \* $i) == $n ] && echo $i
done
