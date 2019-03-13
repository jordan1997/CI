KEYS=$(git shortlog -n ${GIT_PREVIOUS_SUCCESSFUL_COMMIT}..HEAD | grep -E -o "($PROJECT_KEY-\d{1,})")

echo ${KEYS} >> releaseNote.txt
