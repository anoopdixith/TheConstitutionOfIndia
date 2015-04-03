#This convers all the pdf files to corresponding text files.
find . -type f -name "*.pdf" -exec pdftotext {} \;
