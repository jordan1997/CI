# CI
Shell scripts for make integration with Jira and Slack.

# Tutorial
https://medium.com/@vovochkastelmashchuk/ci-and-cd-for-people-2905d1b5a5f3

# Setup
```
PROJECT_KEY=<PROJECT_KET_IN_JIRA>
JIRA_URL=<JIRA_BASE_URL>
JIRA_USERNAME=<YOUR_JIRA_USER_NAME>
JIRA_PASSWORD=<YOUR_JIRA_PASSWORD>
GIT_PREVIOUS_SUCCESSFULL_COMMIT —  SHA of the previous successfully built commit from the same branch.
BUILD_NUMBER=<New project version for Jira>
```
## For integration with Slack
```
SLACK_HOOK=<SLACK_BOT_HOOK>
```
