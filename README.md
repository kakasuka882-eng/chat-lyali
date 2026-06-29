# Android Project README

# Chat Liyali Zaman - شات ليالى زمان

محتويات المشروع:
- تطبيق Android WebView
- يفتح الموقع: https://www.chatliyily.com/
- تصميم حديث ومحسّن للأداء
- جاهز للرفع على Google Play Store

## المتطلبات:
1. Android Studio (أحدث إصدار)
2. Android SDK 34 أو أحدث
3. JDK 8 أو أحدث

## خطوات البناء والتشغيل:

### 1. فتح المشروع:
- افتح Android Studio
- اختر File > Open
- اختر مجلد ChatLiyaliZaman

### 2. مزامنة Gradle:
- سيطلب Android Studio مزامنة الملفات تلقائياً
- انتظر اكتمال المزامنة

### 3. التشغيل على جهاز:
- اتصل جهاز Android أو شغل محاكي
- اضغط Shift + F10 أو استخدم Run > Run 'app'

## إنشاء ملف AAB للرفع على Google Play:

### الخطوة 1: إنشاء ملف Keystore
```bash
keytool -genkey -v -keystore upload-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload
```
(ضع كلمة المرور: chatliyali@123 لكليهما)

### الخطوة 2: نسخ الملف
- انسخ upload-keystore.jks إلى مجلد app/

### الخطوة 3: بناء AAB
افتح Terminal وشغل:
```bash
./gradlew bundleRelease
```

### الخطوة 4: الملف النهائي
سيكون الملف في:
app/build/outputs/bundle/release/app-release.aab

## مميزات التطبيق:
✓ WebView محسّن للأداء
✓ دعم JavaScript و DOM Storage
✓ تصميم Material Design
✓ إدارة الذاكرة الفعّالة
✓ دعم النسخ الاحتياطي
✓ معالجة الأخطاء الذكية
✓ دعم RTL (العربية)
✓ تشفير البيانات

## ملاحظات مهمة:
- قم بتغيير كلمات المرور في build.gradle قبل النشر الفعلي
- تأكد من توقيع التطبيق بشكل صحيح
- اختبر على عدة أجهزة قبل النشر
- احفظ ملف الـ keystore في مكان آمن

## الدعم والمساعدة:
للمزيد من المعلومات عن Android Development:
https://developer.android.com/
