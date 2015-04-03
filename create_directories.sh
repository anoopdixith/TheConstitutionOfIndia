number_of_parts=22
prefix="PART_"

for((i=1;i<=$number_of_parts;i++))
do
	mkdir "$prefix$i"	
done
