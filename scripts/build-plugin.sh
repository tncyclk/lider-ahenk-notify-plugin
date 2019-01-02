#!/bin/bash

# This script builds the project and generates Lider (lider-notify.jar) & Lider Console (lider-console-notify.jar) distribution files as well as Ahenk package (notify.deb)
#
# Generated files can be found under /tmp/lider-ahenk-notify-plugin/
set -e

pushd $(dirname $0) > /dev/null
PRJ_ROOT_PATH=$(dirname $(pwd -P))
popd > /dev/null
echo "Project path: $PRJ_ROOT_PATH"

# Build project
echo "Building lider & lider-console modules..."
cd "$PRJ_ROOT_PATH"
mvn clean install -DskipTests
echo "lider & lider-console modules built successfully."

# Generate Ahenk package
echo "Generating Ahenk package..."
cd "$PRJ_ROOT_PATH"/ahenk-notify
dpkg-buildpackage -b -uc
echo "Generated Ahenk package"

EXPORT_PATH=/tmp/lider-ahenk-notify-plugin
echo "Export path: $EXPORT_PATH"

# Copy resulting files
echo "Copying generated files to $EXPORT_PATH..."
mkdir -p "$EXPORT_PATH"
mv -f "$PRJ_ROOT_PATH"/*.deb "$EXPORT_PATH"
mv -f "$PRJ_ROOT_PATH"/*.changes "$EXPORT_PATH"
cp -rf "$PRJ_ROOT_PATH"/lider-notify/target/lider-*.jar "$EXPORT_PATH"
cp -rf "$PRJ_ROOT_PATH"/lider-console-notify/target/lider-console-*.jar "$EXPORT_PATH"
echo "Copied generated files."

echo "Built finished successfully!"
echo "Files can be found under: $EXPORT_PATH"
