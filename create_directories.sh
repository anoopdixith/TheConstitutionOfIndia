number_of_parts=22
number_of_schedules=12
prefix="PART_"
prefix_for_schedules="SCHEDULE_"


for((i=1;i<=$number_of_parts;i++))
do
	#mkdir "$prefix$i"
	if [ $i -le $number_of_schedules ]; then
		mkdir "$prefix_for_schedules$i"
	fi	
done
