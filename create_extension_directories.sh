#This script creates directory for PARTs that have 'A' extension in the Constitution.
#Pass such PART numbers as the command line arguments.
#Currently, 4,9,14.
prefix="PART_"
postfix="_A"
for var in $@
do
	mkdir "$prefix$var$postfix"  
done
