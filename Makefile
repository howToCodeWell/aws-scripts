include .env

htcw-upload:
	aws s3 --profile=${PROFILE} sync --delete ${SOURCE} ${DEST}
htcw-delete:
	aws s3 --profile=${PROFILE} rm --recursive ${DEST}
