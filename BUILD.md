## Build Instructions - تعليمات البناء

### Windows Users - مستخدمي ويندوز

#### الطريقة 1: استخدام السكريبت (الأسهل)
```bash
.\build.bat
```

#### الطريقة 2: استخدام Gradle مباشرة
```bash
.\gradlew.bat bundleRelease
```

### macOS و Linux Users

#### الطريقة 1: استخدام السكريبت (الأسهل)
```bash
chmod +x build.sh
./build.sh
```

#### الطريقة 2: استخدام Gradle مباشرة
```bash
./gradlew bundleRelease
```

## خطوات مفصلة للبناء:

### 1. فتح المشروع في Android Studio
```
File > Open > اختر مجلد ChatLiyaliZaman
```

### 2. انتظر مزامنة Gradle
التطبيق سيطلب التزامن تلقائياً - اضغط "Sync Now"

### 3. بناء Release AAB
```bash
./gradlew bundleRelease
```

أو استخدم Android Studio:
```
Build > Generate Signed Bundle/APK > Android App Bundle
```

### 4. الملف النهائي
```
app/build/outputs/bundle/release/app-release.aab
```

## ملف الإخراج:

الملف الذي تحتاجه للرفع على Google Play:
```
📦 app-release.aab
```

الحجم التقريبي: 5-10 MB

## الخطأ الشائع:

إذا واجهت خطأ "keystore not found":
1. تأكد أن ملف `upload-keystore.jks` موجود في مجلد `app/`
2. إذا لم يكن موجوداً، أنشئه:
```bash
keytool -genkey -v -keystore upload-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload
```

## النسخة:
- الإصدار: 1.0.0
- رمز الإصدار: 1
- الحد الأدنى: Android 7.0 (API 24)
- الحد الأقصى: Android 14+ (API 34+)

---

✅ بعد البناء، سيكون لديك ملف `app-release.aab` جاهز للرفع!
