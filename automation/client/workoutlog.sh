#! /bin/bash

STARTDATE=$(date +"%d-%m-%y")
ENDDATE=$(date -v +7d "+%d-%m-%y")

HEADER="
## $STARTDATE - $ENDDATE"
TEMPLATE="| **Exercise**              | **Set 1** | **Set 2** | **Set 3** | **Set 4** | **SET 5** | **Set6** | **Set 7** | **Set 8** | **Set 9** | **Set 10** | **Rest Period** |
| ------------------------- | ----------| --------- | --------- | --------- | --------- | -------- | --------- | --------- | --------- | ---------- | --------------- |
| **Pull-Ups**              |           |           |           |           |           |          |           |           |           |            |                 |
| **Negative Pull-Ups**     |           |           |           |           |           |          |           |           |           |            |                 |
| **Shoulder Grip Pullups** |           |           |           |           |           |          |           |           |           |            |                 |
| **Chinups**               |           |           |           |           |           |          |           |           |           |            |                 |
| **Rows**                  |           |           |           |           |           |          |           |           |           |            |                 |
| **Dips**                  |           |           |           |           |           |          |           |           |           |            |                 |
| **Push-Ups**              |           |           |           |           |           |          |           |           |           |            |                 |
| **Decline Pushups**       |           |           |           |           |           |          |           |           |           |            |                 |
| **Arnold Dips**           |           |           |           |           |           |          |           |           |           |            |                 |
| **Pike Push-Ups**         |           |           |           |           |           |          |           |           |           |            |                 |
| **Pike Holds**            |           |           |           |           |           |          |           |           |           |            |                 |
| **Curls**                 |           |           |           |           |           |          |           |           |           |            |                 |
| **Planks**                |           |           |           |           |           |          |           |           |           |            |                 |
| **Arnold Dips**           |           |           |           |           |           |          |           |           |           |            |                 |
| **Planche holds**         |           |           |           |           |           |          |           |           |           |            |                 |"

OUTPUTFILE="$HOME/workoutlog.md"

if [[ $1 ]]; then
    OUTPUTFILE=$1
fi

echo $HEADER >> "$OUTPUTFILE"
echo "$TEMPLATE" >> "$OUTPUTFILE"





