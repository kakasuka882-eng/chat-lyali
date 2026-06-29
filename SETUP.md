# Installation and Setup Guide

## الخطوة 1: تحضير بيئة التطوير

### 1.1 تثبيت Android Studio
- اذهب إلى: https://developer.android.com/studio
- حمّل أحدث إصدار
- ثبّته واتبع التعليمات

### 1.2 تثبيت Java Development Kit (JDK)
- اذهب إلى: https://www.oracle.com/java/technologies/downloads/
- حمّل JDK 17 أو أحدث
- ثبّته واتبع التعليمات

### 1.3 تثبيت Android SDK
- فتح Android Studio
- اذهب إلى: Tools > SDK Manager
- تأكد من تثبيت:
  - Android SDK Platform 34
  - Android SDK Build-Tools 34
  - Android SDK Command-line Tools

## الخطوة 2: فتح المشروع

1. افتح Android Studio
2. اختر: File > Open
3. اختر مجلد: `ChatLiyaliZaman`
4. اضغط OK

## الخطوة 3: مزامنة Gradle

1. سيظهر طلب تزامن تلقائياً
2. اضغط: "Sync Now"
3. انتظر اكتمال المزامنة (قد يستغرق دقائق)

## الخطوة 4: تشغيل التطبيق

### على محاكي:
1. اضغط على: AVD Manager (الأيقونة العلوية)
2. اختر جهاز افتراضي أو أنشئ واحداً جديداً
3. اضغط على زر التشغيل (▶)
4. انتظر بدء المحاكي
5. اضغط Shift + F10 لتشغيل التطبيق

### على جهاز فعلي:
1. وصّل جهاز Android بكابل USB
2. فعّل Developer Mode على الجهاز (اضغط Build Number 7 مرات في Settings)
3. فعّل USB Debugging
4. وافق على الترخيص على الجهاز
5. اضغط Shift + F10 لتشغيل التطبيق

## الخطوة 5: إنشاء ملف التوقيع (Keystore)

هذا مهم للرفع على Google Play!

1. افتح Terminal (في Android Studio: View > Tool Windows > Terminal)
2. اكتب الأمر التالي:

```bash
keytool -genkey -v -keystore upload-keystore.jks \
-keyalg RSA -keysize 2048 -validity 10000 -alias upload
```

3. اكتب كلمة المرور: `chatliyali@123`
4. ملأ البيانات:
   - First name: Chat
   - Last name: Liyali Zaman
   - Organization: ChatApp
   - Country: SA

5. سيتم إنشاء ملف `upload-keystore.jks`

## الخطوة 6: نسخ ملف التوقيع

1. انسخ الملف `upload-keystore.jks`
2. ضعه في مجلد `app/`

## الخطوة 7: بناء ملف AAB

الآن يمكنك بناء ملف AAB للرفع على Google Play!

### الطريقة 1: استخدام Android Studio
1. اذهب إلى: Build > Generate Signed Bundle/APK
2. اختر: Android App Bundle
3. اضغط Next
4. اختر المفتاح الذي أنشأته
5. اضغط Next ثم Finish

### الطريقة 2: استخدام Command Line
افتح Terminal واكتب:

```bash
./gradlew bundleRelease
```

سيتم إنشاء الملف في:
```
app/build/outputs/bundle/release/app-release.aab
```

## الخطوة 8: الرفع على Google Play Console

1. اذهب إلى: https://play.google.com/console
2. اضغط على "Create app"
3. ملأ معلومات التطبيق:
   - App name: شات ليالى زمان
   - Default language: Arabic
   - App type: Application
4. اتبع الخطوات لملء التفاصيل
5. اذهب إلى: Release > Production
6. اضغط على "Create release"
7. ارفع ملف `app-release.aab`
8. أضف الوصف والصور
9. اضغط "Review release"
10. اضغط "Roll out to production"

## المشاكل الشائعة والحلول

### ❌ مشكلة: "Gradle sync failed"
**الحل:**
1. احذف مجلد `.gradle` في المشروع
2. احذف مجلد `build`
3. اضغط File > Invalidate Caches
4. حاول المزامنة مرة أخرى

### ❌ مشكلة: "Android SDK not found"
**الحل:**
1. اذهب إلى: File > Project Structure
2. اختر: SDK Location
3. تأكد من أن SDK Path صحيح
4. اضغط OK

### ❌ مشكلة: "keytool not found"
**الحل:**
استخدم المسار الكامل:
```bash
"%JAVA_HOME%\bin\keytool" -genkey -v -keystore upload-keystore.jks ...
```

### ❌ مشكلة: التطبيق بطيء جداً
**الحل:**
- استخدم Release Build وليس Debug
- أغلق البرامج الأخرى
- استخدم جهاز افتراضي بمواصفات أعلى

## نصائح الأداء:

✅ استخدم Release Build للاختبار
✅ أغلق البرامج غير الضرورية
✅ استخدم جهاز افتراضي بـ RAM كافي
✅ استخدم SSD للتخزين المؤقت للـ Gradle

## الدعم والمساعدة:

- Documentation: https://developer.android.com/docs
- Community: https://stackoverflow.com/questions/tagged/android
- Chat with AI: اسأل في VS Code Copilot

---

انتهى! يمكنك الآن بناء ونشر التطبيق! 🎉
