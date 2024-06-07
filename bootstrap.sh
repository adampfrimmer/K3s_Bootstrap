#!/bin/bash

# runs the given command as root (detects if we are root already)
runAsRoot() {
  if [ $EUID -ne 0 -a "$USE_SUDO" = "true" ]; then
    sudo "${@}"
  else
    "${@}"
  fi
}

downloadFile() {
  HELM_DIST="helm-$TAG-$OS-$ARCH.tar.gz"
  DOWNLOAD_URL="https://get.helm.sh/$HELM_DIST"
  CHECKSUM_URL="$DOWNLOAD_URL.sha256"
  HELM_TMP_ROOT="$(mktemp -dt helm-installer-XXXXXX)"
  HELM_TMP_FILE="$HELM_TMP_ROOT/$HELM_DIST"
  HELM_SUM_FILE="$HELM_TMP_ROOT/$HELM_DIST.sha256"
  echo "Downloading $DOWNLOAD_URL"
  if [ "${HAS_CURL}" == "true" ]; then
    curl -SsL "$CHECKSUM_URL" -o "$HELM_SUM_FILE"
    curl -SsL "$DOWNLOAD_URL" -o "$HELM_TMP_FILE"
  elif [ "${HAS_WGET}" == "true" ]; then
    wget -q -O "$HELM_SUM_FILE" "$CHECKSUM_URL"
    wget -q -O "$HELM_TMP_FILE" "$DOWNLOAD_URL"
  fi
}





# Execution

#Stop execution on any error

set -e

# Set debug if desired
if [ "${DEBUG}" == "true" ]; then
  set -x
fi

echo "Hello 1"
ls -al
