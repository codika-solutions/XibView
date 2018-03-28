#!/bin/sh

declare -a TEMPLATES=("XibView" "XibCell")

DESTINATION_PATH="${HOME}/Library/Developer/Xcode/Templates/File Templates/User Interface"

# Check existence of destination folder
if ! test -d "${DESTINATION_PATH}"
then
	echo "Creating \"${DESTINATION_PATH}\"..."
	mkdir -p "${DESTINATION_PATH}"
	echo "Created \"${DESTINATION_PATH}\"."
fi

# Copy templates from source to destination
for TEMPLATE in "${TEMPLATES[@]}"
do
	TEMPLATE_SOURCE_FOLDER_PATH="./${TEMPLATE}.xctemplate"
	TEMPLATE_DESTINATION_PATH="${DESTINATION_PATH}/${TEMPLATE}.xctemplate/"
	
	echo "Adding ${TEMPLATE} template at \"${TEMPLATE_DESTINATION_PATH}\"..."
	cp -r "${TEMPLATE_SOURCE_FOLDER_PATH}" "${DESTINATION_PATH}"
	echo "Added ${TEMPLATE} template at \"${EXISTING_TEMPLATE_PATH}\"."
done

echo "Now you can create xib based views in a easier way :)"