#!/bin/bash
# Update Version Script

CURRENT_VERSION="1.0.0"
CURRENT_CODE=1

echo "================================"
echo "  Chat Liyali Zaman - Versioning"
echo "================================"
echo ""
echo "Current Version: $CURRENT_VERSION"
echo "Current Code: $CURRENT_CODE"
echo ""

read -p "Enter new version (e.g. 1.0.1): " new_version

if [ -z "$new_version" ]; then
    echo "Cancelled."
    exit 1
fi

new_code=$((CURRENT_CODE + 1))

# Update build.gradle.kts
sed -i "s/versionName = \"$CURRENT_VERSION\"/versionName = \"$new_version\"/g" app/build.gradle.kts
sed -i "s/versionCode = $CURRENT_CODE/versionCode = $new_code/g" app/build.gradle.kts

echo ""
echo "✅ Version updated successfully!"
echo "   Version: $new_version"
echo "   Code: $new_code"
echo ""
echo "Files updated:"
echo "  - app/build.gradle.kts"
