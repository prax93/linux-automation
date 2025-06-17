#! /bin/bash

STARTDATE=$(date +"%d-%m-%y")
ENDDATE=$(date -v +7d "+%d-%m-%y")

HEADER="
## $STARTDATE - $ENDDATE"
TEMPLATE=$(cat ./template.md)

echo $HEADER >> ~/workoutlog.md
echo "
$TEMPLATE
" >> ~/workoutlog.md 





