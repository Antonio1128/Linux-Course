#!/bin/bash

TARGET_DIR=$1

if [ -z "$TARGET_DIR" ]; then
    echo "Usage: organize <directory>"
    exit 1
fi

mkdir -p "$TARGET_DIR/images"
mkdir -p "$TARGET_DIR/documents"
mkdir -p "$TARGET_DIR/videos"
mkdir -p "$TARGET_DIR/archives"
mkdir -p "$TARGET_DIR/others"

for file in "$TARGET_DIR"/*; do

    if [ -f "$file" ]; then

        case "${file##*.}" in

            jpg|jpeg|png|gif)
                mv "$file" "$TARGET_DIR/images/"
                ;;

            pdf|doc|docx|txt)
                mv "$file" "$TARGET_DIR/documents/"
                ;;

            mp4|mkv|avi)
                mv "$file" "$TARGET_DIR/videos/"
                ;;

            zip|tar|gz)
                mv "$file" "$TARGET_DIR/archives/"
                ;;

            *)
                mv "$file" "$TARGET_DIR/others/"
                ;;

        esac

    fi

done

echo "Files organized successfuly"
