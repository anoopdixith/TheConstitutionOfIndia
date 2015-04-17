#This script takes care of committing changes and pushing it to the remote.
#Pass the commit message as the first argument.
#If applicable, send author's name as the second argument.
message=$1;
git add *;
if [[ $# -eq 2 ]] ; then
    author=$2;
    git commit --author="$message <>" -m "$1";
else
    git commit -m "$1";
fi
