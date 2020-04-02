include .env

upload:
	aws s3 --profile=${PROFILE} sync --delete ${SOURCE} ${DEST}
delete:
	aws s3 --profile=${PROFILE} rm --recursive ${DEST}
