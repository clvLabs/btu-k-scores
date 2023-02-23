#!/usr/bin/env bash

#
# Update data ZIPs
#

RESOURCE="${1}"

echo "btu-k-sim data ZIP updater."
echo ""

if [[ -z ${RESOURCE} ]]; then
  echo "Usage: ${0} [resource folder]"
  exit 1
fi

if ! [[ -d ${RESOURCE} ]]; then
  echo "ERROR: Folder ${RESOURCE} does not exist."
  exit 1
fi

if ! [[ -f ${RESOURCE}.version ]]; then
  echo "ERROR: Please run from the data/ folder."
  exit 1
fi

if ! [[ -f ${RESOURCE}.zip ]]; then
  echo "ERROR: Please run from the data/ folder."
  exit 1
fi

VERSION=$(date +"%y%m%dT%H%M%S")
echo "- Setting ${RESOURCE}.version to new version (${VERSION})"
echo ${VERSION} > ${RESOURCE}.version
echo ""

echo "- Deleting old ${RESOURCE}.zip"
rm -v ${RESOURCE}.zip
echo ""

echo "- Creating new ${RESOURCE}.zip"
zip -rv ${RESOURCE}.zip ${RESOURCE}
echo ""

echo "---------------------------------------------------"
echo ""
echo "${RESOURCE}.zip updated to version ${VERSION}"
echo ""
echo "Recommended next steps:"
echo "git add ${RESOURCE}.version"
echo "git add ${RESOURCE}.zip"
echo "git commit -m \"${RESOURCE}.zip updated to version ${VERSION}\""
echo "git tag ${RESOURCE}-v${VERSION}"
echo "git push"
echo "git push --tags"
echo ""
echo "(one-liner)"
echo "  "\
"git add ${RESOURCE}.version ; "\
"git add ${RESOURCE}.zip ; "\
"git commit -m \"${RESOURCE}.zip updated to version ${VERSION}\" ; "\
"git tag ${RESOURCE}-v${VERSION} ; "\
"git push ; "\
"git push --tags"
