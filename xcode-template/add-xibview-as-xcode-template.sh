#!/bin/sh

TEMPLATE_FOLDER_NAME="XibView.xctemplate"	

DESTINATION_PATH="${HOME}/Library/Developer/Xcode/Templates/File Templates/User Interface"
SOURCE_FOLDER_PATH="./${TEMPLATE_FOLDER_NAME}/"

EXISTING_TEMPLATE_PATH="${DESTINATION_PATH}/${TEMPLATE_FOLDER_NAME}/"

echo "${EXISTING_TEMPLATE_PATH}"
# OPEN_CMD="open ${EXISTING_TEMPLATE_PATH}"
# eval ${OPEN_CMD}
# echo $("dirname ${EXISTING_TEMPLATE_PATH}")
if test -d "${EXISTING_TEMPLATE_PATH}"
then
	echo "XibView template already exists on \"${EXISTING_TEMPLATE_PATH}\"."
	exit 0
fi

cp -r "${SOURCE_FOLDER_PATH}" "${DESTINATION_PATH}"
echo "Added XibView template at \"${EXISTING_TEMPLATE_PATH}\"."
echo "Now you can create xib based views in a easier way :)"