#!/bin/bash

if [ $# -eq 0 ]
  then
    TARGET=http://localhost:4000
  else
    TARGET=$1
fi

wkhtmltopdf $TARGET tk-resume.pdf
curl $TARGET | html-to-text > tk-resume.txt
