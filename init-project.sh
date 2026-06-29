#!/bin/bash
# Project Initialization Script

echo "================================================"
echo "  Chat Liyali Zaman - Project Initialization"
echo "================================================"
echo ""

# Make scripts executable
chmod +x gradlew
chmod +x build.sh
chmod +x update-version.sh
chmod +x check-config.sh

echo "✓ Made scripts executable"

# Copy local.properties if needed
if [ ! -f "local.properties" ]; then
    if command -v android &> /dev/null; then
        sdk_path=$(android list sdk | grep "Android SDK" | head -1)
        echo "sdk.dir=$ANDROID_HOME" > local.properties
        echo "✓ Created local.properties"
    else
        echo "⚠ Please create local.properties manually"
        echo "  See local.properties.example for reference"
    fi
fi

echo ""
echo "✓ Project initialization complete!"
echo ""
echo "Next steps:"
echo "1. Run: ./check-config.sh"
echo "2. Run: ./gradlew build"
echo "3. Follow documentation in README.md"
echo ""
