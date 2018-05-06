KEYS=$(git shortlog -n ${GIT_PREVIOUS_SUCCESSFUL_COMMIT}..HEAD — oneline | cut -d ']' -f1 | cut -d '[' -f2 | grep "^IM")

echo ${KEYS} >> releaseNote.txt
