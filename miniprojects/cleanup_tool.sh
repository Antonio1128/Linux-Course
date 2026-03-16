#!/bin/bash

DRY_RUN=false
if [ "$1" == "--dry-run" ]; then
DRY_RUN=true
fi
echo "Linux Cleanup Tool"
clean_temp() {
echo "Cleaning /temp...."

if [ "$DRY_RUN" = true  ]; then
echo "[DRY RUN] would clean /temp"
else
rm -rf /tmp/*
fi
}
clean_cache() {
    echo "Cleaning user cache..."

    if [ "$DRY_RUN" = true ]; then
        echo "[DRY RUN] Would clean ~/.cache"
    else
        rm -rf ~/.cache/*
    fi
}

clean_trash() {
    echo "Cleaning trash..."

    if [ "$DRY_RUN" = true ]; then
        echo "[DRY RUN] Would empty trash"
    else
        rm -rf ~/.local/share/Trash/*
    fi
}

clean_temp
clean_cache
clean_trash

echo ""
echo "Cleanup finished."
