#This converts the modified text file to pdf.
#It uses Enscript to convert text to ps format and then from ps to pdf.
#You MUST send the name of the txt file  as the first argument (withOUT extension).
#pdf will be generated in the same path where the txt file exists.

if [[ $# -ne 1 ]] ; then
    echo 'Error in passing command line arguments. Check HELP at the top of this file.'
    exit 1
fi
name_of_file=$1

find . -type f -name $name_of_file".txt" | while read ONELINE; do enscript "$ONELINE" -p "$(echo "$ONELINE" | sed 's/.txt/.ps/g')"; done

find . -type f -name "*.ps" | while read ONELINE; do ps2pdf "$ONELINE" "$(echo "$ONELINE" | sed 's/.ps/.pdf/g')"; done

mkdir ps-files
find . -type f -name "*.ps" -exec mv {} ps-files \;
rm -fr ps-files

