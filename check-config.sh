#!/bin/bash
# Configuration Check Script

echo "========================================"
echo "  Chat Liyali Zaman - Configuration Check"
echo "========================================"
echo ""

# Check Java
echo "Checking Java Installation..."
if command -v java &> /dev/null; then
    java_version=$(java -version 2>&1)
    echo "✓ Java is installed"
    echo "  $java_version"
else
    echo "✗ Java is NOT installed"
    echo "  Please install JDK 11 or higher"
fi

echo ""

# Check Gradle
echo "Checking Gradle..."
if [ -f "./gradlew" ]; then
    echo "✓ Gradle Wrapper found"
else
    echo "✗ Gradle Wrapper NOT found"
fi

echo ""

# Check SDK
echo "Checking Android SDK..."
if [ -n "$ANDROID_HOME" ]; then
    echo "✓ ANDROID_HOME is set: $ANDROID_HOME"
else
    echo "✗ ANDROID_HOME is NOT set"
    echo "  Please set ANDROID_HOME environment variable"
fi

echo ""

# Check project structure
echo "Checking Project Structure..."
if [ -f "settings.gradle.kts" ]; then
    echo "✓ settings.gradle.kts found"
else
    echo "✗ settings.gradle.kts NOT found"
fi

if [ -f "app/build.gradle.kts" ]; then
    echo "✓ app/build.gradle.kts found"
else
    echo "✗ app/build.gradle.kts NOT found"
fi

if [ -f "app/src/main/AndroidManifest.xml" ]; then
    echo "✓ AndroidManifest.xml found"
else
    echo "✗ AndroidManifest.xml NOT found"
fi

if [ -d "app/src/main/java/com/chatliyali/chatapp" ]; then
    echo "✓ Source code directory found"
else
    echo "✗ Source code directory NOT found"
fi

echo ""
echo "========================================="
echo ""

# Summary
echo "Configuration check completed!"
echo ""
echo "Next steps:"
echo "1. Make sure all items above show ✓"
echo "2. Fix any ✗ items"
echo "3. Run: ./gradlew build"
echo ""
