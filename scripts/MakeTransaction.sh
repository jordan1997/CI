file="releaseNote.txt"

if [ -f "$file" ]
then
 for key in $(cat releaseNote.txt)
  do
   curl -D- -u $JIRA_USERNAME:$JIRA_PASSWORD -X POST \
     --data '{
              "transition":{
                “id":"${MOVE_TO_READY_FOR_TESTING_CODE}”
              }
            }' \
    -H "Content-Type:application/json" \
               ${JIRA_URL}rest/api/2/issue/${key}/transitions
else
   echo "$file not found."
fi
