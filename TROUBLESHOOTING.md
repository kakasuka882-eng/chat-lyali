## Troubleshooting Guide - دليل استكشاف الأخطاء

### ❌ الخطأ: "Android SDK not found"

**السبب:** عدم تثبيت Android SDK بشكل صحيح

**الحل:**
1. افتح Android Studio
2. اذهب إلى: File > Project Structure > SDK Location
3. اختر SDK path صحيح
4. اضغط Apply ثم OK

---

### ❌ الخطأ: "Gradle sync failed"

**السبب:** مشكلة في ملفات Gradle أو الإنترنت

**الحل:**
```bash
# احذف الملفات المؤقتة
rm -rf .gradle build

# أو على Windows
rmdir /s .gradle
rmdir /s build

# حاول المزامنة مرة أخرى
File > Sync Now
```

---

### ❌ الخطأ: "Failed to resolve dependency"

**السبب:** مشكلة في المكتبات أو الإنترنت

**الحل:**
1. تأكد من اتصالك بالإنترنت
2. اذهب إلى: File > Settings > System Settings > HTTP Proxy
3. اختر "No proxy"
4. حاول المزامنة مرة أخرى

---

### ❌ الخطأ: "keytool command not found"

**السبب:** JDK غير مثبت أو لم يُضف للـ PATH

**الحل:**

**Windows:**
```bash
"%JAVA_HOME%\bin\keytool" -genkey -v -keystore upload-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload
```

**Linux/Mac:**
```bash
~/jdk-17/bin/keytool -genkey -v -keystore upload-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload
```

---

### ❌ الخطأ: "Build failed: Execution failed for task ':app:compileDebugKotlin'"

**السبب:** خطأ في كود Kotlin

**الحل:**
1. افتح الملف المذكور في الخطأ
2. تحقق من الأخطاء (الأسطر الحمراء)
3. صحح الأخطاء
4. حاول البناء مرة أخرى

---

### ❌ الخطأ: "Signing config doesn't exist"

**السبب:** ملف keystore غير موجود

**الحل:**
1. أنشئ ملف keystore:
```bash
keytool -genkey -v -keystore upload-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload
```
2. انسخ الملف إلى مجلد `app/`
3. حاول البناء مرة أخرى

---

### ❌ الخطأ: التطبيق بطيء جداً

**الأسباب المحتملة:**
1. تشغيل Debug Build بدلاً من Release
2. محاكي ضعيف الأداء
3. إنترنت بطيء

**الحل:**
1. استخدم Release Build:
```bash
./gradlew assembleRelease
```
2. زيادة مواصفات المحاكي
3. استخدم جهاز حقيقي
4. تحقق من سرعة الإنترنت

---

### ❌ الخطأ: "WebView not responding"

**السبب:** الموقع بطيء أو غير متاح

**الحل:**
1. تحقق من الإنترنت
2. تأكد من أن الموقع يعمل
3. امسح الذاكرة المؤقتة:
```
Settings > Apps > [App] > Storage > Clear Cache
```

---

### ❌ الخطأ: "App crashes on startup"

**السبب:** خطأ في الكود أو الموارد

**الحل:**
1. افتح Logcat في Android Studio
2. ابحث عن رسالة الخطأ
3. ركز على السطر الأحمر الأول
4. صحح الخطأ

---

### ❌ الخطأ: "Cannot find symbol 'R'"

**السبب:** مشكلة في موارد التطبيق

**الحل:**
```bash
# احذف ملفات الـ cache
rm -rf app/build

# أو على Windows
rmdir /s app\build

# أعد بناء المشروع
Build > Clean Project
Build > Rebuild Project
```

---

### ℹ️ نصائح عامة:

1. **اقرأ رسائل الأخطاء بعناية** - تحتوي على معلومات مهمة
2. **استخدم Google** - ابحث عن الخطأ على Google
3. **اسأل في Stack Overflow** - قد يكون شخص آخر واجه نفس المشكلة
4. **أعد المحاولة** - أحياناً المشكلة مؤقتة

---

### 📞 الدعم الإضافي:

- Android Documentation: https://developer.android.com/docs
- Stack Overflow: https://stackoverflow.com/questions/tagged/android
- Android Community: https://www.reddit.com/r/android
- GitHub Issues: https://github.com/issues

---

لم تجد الحل؟ اسأل في مكان موثوق! 🤔
