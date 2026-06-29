#!/bin/bash
# Build Script for Chat Liyali Zaman

echo "================================================"
echo "   Chat Liyali Zaman - Build Script"
echo "================================================"
echo ""

# Check if gradlew exists
if [ ! -f "gradlew" ]; then
    echo "❌ Error: gradlew not found!"
    exit 1
fi

# Make gradlew executable
chmod +x gradlew

# Clean build
echo "🧹 Cleaning old builds..."
./gradlew clean

# Build Release AAB
echo ""
echo "🔨 Building Release AAB..."
./gradlew bundleRelease

# Check if build was successful
if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Build successful!"
    echo "📦 Output: app/build/outputs/bundle/release/app-release.aab"
    echo ""
    echo "================================================"
    echo "Your AAB file is ready for Google Play Console!"
    echo "================================================"
else
    echo ""
    echo "❌ Build failed!"
    exit 1
fi

# Optional: Build Debug APK
echo ""
read -p "Do you want to build debug APK? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "🔨 Building Debug APK..."
    ./gradlew assembleDebug
    echo "✅ Debug APK built: app/build/outputs/apk/debug/app-debug.apk"
fi
