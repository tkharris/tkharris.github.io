#!/bin/bash

wkhtmltopdf http://localhost:4000/resume tk-resume.pdf
curl http://localhost:4000/resume/ | html-to-text > tk-resume.txt
