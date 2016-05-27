#!/bin/bash
# author: fabian leuthold
# date:   2016-05-27
# use this shellscript to reduce size of pdfs by increasing compression level according to ebook-settings

# Usage: remove all utility bills pdf file password 
shopt -s nullglob nocaseglob
for f in *.pdf
do
	echo "Compressing pdf file - $f"
	gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -sOutputFile="comp_$f" "$f"
done
