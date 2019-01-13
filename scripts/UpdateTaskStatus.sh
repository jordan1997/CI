curl -u ${JIRA_USER_NAME}:${JIRA_USER_PASSWORD} -X POST --data '{"transition":{"id":"31"}}' -H "Content-Type: application/json" https://jira.mobidev.biz/rest/api/2/issue/${issue_key}/transitions/
