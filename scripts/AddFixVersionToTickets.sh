file="releaseNote.txt"

if [ -f "$file" ]
then
 for key in $(cat releaseNote.txt)
  do
      curl -D- -u $JIRA_USERNAME:$JIRA_PASSWORD -X PUT --data "{\"update\":{\"fixVersions\":[{\"add\":{\"name\":\"${BUILD_NUMBER}\"}}]}}" -H "Content-Type:application/json" ${JIRA_URL}rest/api/2/issue/${key}
else
  echo "$file not found."
fi
