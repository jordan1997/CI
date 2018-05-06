file="releaseNote.txt"
if [ -f “$file” ]
then
 echo "$file found."
 message="We uploaded the new build"
 for key in $(cat releaseNote.txt)
 do
   message=$"${message} \n ${JIRA_URL}browse/$key"
 done

 curl -X POST -H 'Content-type: application/json' — data "{\"text   \":\"$message\"}" ${SLACK_HOOK}
else
 echo "$file not found."
fi
