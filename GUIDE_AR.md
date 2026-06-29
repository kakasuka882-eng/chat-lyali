# Chat Liyali Zaman

## خطوات سريعة للبدء:

### 1. المتطلبات الأساسية:
- Android Studio (أحدث إصدار)
- Java Development Kit (JDK) 11 أو أحدث
- Android SDK API Level 34

### 2. فتح المشروع:
```
File > Open > اختر مجلد ChatLiyaliZaman
```

### 3. اجعل Gradle يتزامن تلقائياً:
المشروع سيطلب التزامن - اضغط "Sync Now"

### 4. تشغيل التطبيق:
```
Shift + F10 (Windows)
أو استخدم Run > Run 'app'
```

## بناء ملف AAB للنشر على Google Play:

### الخطوة 1: إنشاء ملف التوقيع (Keystore)

افتح Terminal في Android Studio واكتب:
```bash
keytool -genkey -v -keystore upload-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload
```

سيطلب منك:
- Password: chatliyali@123
- First name: Chat Liyali
- Last name: Zaman
- Organization: Chat
- Country: SA

### الخطوة 2: نسخ الملف

نسخ الملف `upload-keystore.jks` إلى مجلد `app/`

### الخطوة 3: بناء AAB

افتح Terminal واكتب:
```bash
./gradlew bundleRelease
```

سيستغرق الأمر عدة دقائق.

### الخطوة 4: الملف النهائي

ستجد الملف في:
```
app/build/outputs/bundle/release/app-release.aab
```

## رفع التطبيق على Google Play:

1. اذهب إلى: https://play.google.com/console
2. إنشاء مشروع جديد
3. ملء معلومات التطبيق
4. رفع ملف `app-release.aab`
5. اتبع الخطوات للنشر

## المميزات الموجودة:

✅ WebView محسّن للأداء العالي
✅ دعم JavaScript و DOM Storage
✅ تصميم Material Design حديث
✅ دعم اللغة العربية (RTL)
✅ معالجة الأخطاء الذكية
✅ تخزين مؤقت (Caching)
✅ إدارة الذاكرة الفعّالة
✅ دعم النسخ الاحتياطي

## الملفات الموجودة:

```
ChatLiyaliZaman/
├── app/
│   ├── src/
│   │   ├── main/
│   │   │   ├── java/com/chatliyali/chatapp/
│   │   │   │   └── MainActivity.kt
│   │   │   ├── res/
│   │   │   │   ├── layout/
│   │   │   │   │   └── activity_main.xml
│   │   │   │   ├── values/
│   │   │   │   │   ├── colors.xml
│   │   │   │   │   ├── strings.xml
│   │   │   │   │   └── themes.xml
│   │   │   │   ├── drawable/
│   │   │   │   │   ├── ic_launcher.xml
│   │   │   │   │   └── ic_launcher_round.xml
│   │   │   │   └── xml/
│   │   │   │       ├── data_extraction_rules.xml
│   │   │   │       └── backup_rules.xml
│   │   │   └── AndroidManifest.xml
│   │   └── test/
│   ├── build.gradle.kts
│   └── proguard-rules.pro
├── gradle/
│   └── wrapper/
│       └── gradle-wrapper.properties
├── settings.gradle.kts
├── build.gradle.kts
├── gradlew
├── gradlew.bat
├── gradle.properties
└── README.md
```

## ملاحظات أمان:

⚠️ تأكد من عدم مشاركة ملف `upload-keystore.jks`
⚠️ غيّر كلمات المرور في production
⚠️ احفظ نسخة من الـ keystore في مكان آمن
⚠️ لا تشارك بيانات الاعتماد

## استكشاف الأخطاء:

**المشكلة**: لا يفتح Android Studio المشروع
**الحل**: احذف مجلد `.gradle` و `build` وحاول مجدداً

**المشكلة**: خطأ في Gradle
**الحل**: تأكد من تثبيت Android SDK الصحيح

**المشكلة**: التطبيق بطيء
**الحل**: تأكد من تشغيل Release Build وليس Debug

## معلومات إضافية:

الموقع المستخدم: https://www.chatliyily.com/
اسم التطبيق: شات ليالى زمان
الحد الأدنى للإصدار: Android 7.0 (API 24)
الحد الأقصى: Android 14+ (API 34+)

---

تم إنشاء التطبيق بنجاح! استمتع بالتطوير 🎉
