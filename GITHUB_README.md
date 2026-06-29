# Chat Liyali Zaman - شات ليالى زمان

A beautiful Android WebView application that provides access to https://www.chatliyily.com/

## Features - المميزات

✨ **Beautiful Design**
- Custom gramophone icon with musical notes
- Golden (#DAA520) and Sky Blue (#87CEEB) color scheme
- Material Design 3 compliant

🚀 **Performance**
- Fast WebView loading
- Optimized for Android 7.0+ (API 24)
- Targets Android 14+ (API 34)
- ProGuard code minification
- Resource shrinking enabled

🔒 **Security**
- SSL/TLS encryption
- Network security configuration
- Secure backup rules
- Data extraction rules

🌍 **Language Support**
- Full Arabic (RTL) support
- English interface

## Building

### Automatic Build (GitHub Actions)

Push to GitHub and the app will build automatically:
- Debug APK: `app-debug.apk`
- Release AAB: `app-release.aab`

### Local Build

```bash
# Debug APK
./gradlew assembleDebug

# Release Bundle (AAB)
./gradlew bundleRelease

# Clean and build
./gradlew clean build
```

## Project Structure

```
ChatLiyaliZaman/
├── app/
│   ├── src/main/
│   │   ├── java/com/chatliyali/chatapp/
│   │   │   └── MainActivity.kt
│   │   ├── res/
│   │   │   ├── drawable/ (icons)
│   │   │   ├── layout/ (XML layouts)
│   │   │   └── values/ (colors, strings, etc.)
│   │   └── AndroidManifest.xml
│   └── build.gradle.kts
├── gradle/
│   └── wrapper/
├── .github/
│   └── workflows/
│       └── build.yml
└── README.md
```

## Configuration

### Android Manifest
- Package: `com.chatliyali.chatapp`
- Target SDK: 34 (Android 14)
- Min SDK: 24 (Android 7.0)
- Permissions: INTERNET, ACCESS_NETWORK_STATE

### Build Configuration
- Gradle 8.1
- Kotlin DSL
- JVM Target: 1.8
- Kotlin 1.9.10

## Uploading to Google Play

1. Generate signing key:
```bash
keytool -genkey -v -keystore my-release-key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias my-key-alias
```

2. Configure `app/build.gradle.kts` with signing config

3. Build release:
```bash
./gradlew bundleRelease
```

4. Upload `app/build/outputs/bundle/release/app-release.aab` to Google Play Console

## Documentation

- [START_HERE.txt](START_HERE.txt) - Quick start guide
- [COMPLETE_GUIDE.md](COMPLETE_GUIDE.md) - Full setup guide
- [BUILD.md](BUILD.md) - Build instructions
- [PLAY_CONSOLE.md](PLAY_CONSOLE.md) - Google Play upload guide
- [DESIGN_UPDATE.md](DESIGN_UPDATE.md) - Design specifications
- [TROUBLESHOOTING.md](TROUBLESHOOTING.md) - Problem solving

## Design

### Color Scheme
- **Primary**: #DAA520 (Golden)
- **Primary Variant**: #B8860B (Dark Gold)
- **Secondary**: #87CEEB (Sky Blue)
- **Text**: #212121 / #757575

### Icons
- Custom gramophone design with musical notes
- Available in 3 variants (square, round, and artistic)
- Scalable vector format (XML)

## Technical Details

### WebView Configuration
- JavaScript enabled
- DOM Storage enabled
- Built-in zoom controls
- Back button navigation handling
- Network state checking
- Automatic caching

### Security
- Network Security Policy configured
- SSL pinning ready
- No cleartext traffic
- Secure data handling

### Optimization
- ProGuard minification enabled
- Resource shrinking active
- Size optimization: ~5-10 MB

## Version

- **Version**: 1.0.0
- **Build**: 1
- **Status**: Production Ready

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

For issues or questions:
1. Check [TROUBLESHOOTING.md](TROUBLESHOOTING.md)
2. Read the documentation files
3. Review Android Developer documentation

## Credits

Developed with ❤️ using Kotlin and Android SDK

---

**Ready to build?** 🚀

Check [START_HERE.txt](START_HERE.txt) for quick setup instructions!
