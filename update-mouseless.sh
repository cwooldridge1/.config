#!/bin/bash

# Update mouseless config files from the application directory to this repo

SOURCE_DIR="$HOME/Library/Containers/net.sonuscape.mouseless/Data/.mouseless"
DEST_DIR=".mouseless"

echo "Updating mouseless configs..."

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory not found: $SOURCE_DIR"
    exit 1
fi

# Remove existing directory and copy fresh
rm -rf "$DEST_DIR"
cp -r "$SOURCE_DIR" "$DEST_DIR"

echo "Mouseless configs updated successfully!"
echo "Don't forget to commit the changes if needed."