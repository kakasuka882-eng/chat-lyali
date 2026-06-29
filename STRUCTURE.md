# Project Structure

```
ChatLiyaliZaman/
│
├── app/
│   ├── src/
│   │   ├── main/
│   │   │   ├── java/
│   │   │   │   └── com/chatliyali/chatapp/
│   │   │   │       └── MainActivity.kt          # النشاط الرئيسي مع WebView
│   │   │   │
│   │   │   ├── res/
│   │   │   │   ├── layout/
│   │   │   │   │   └── activity_main.xml        # تصميم الواجهة الرئيسية
│   │   │   │   │
│   │   │   │   ├── values/
│   │   │   │   │   ├── colors.xml               # الألوان
│   │   │   │   │   ├── strings.xml              # النصوص
│   │   │   │   │   ├── styles.xml               # الأنماط
│   │   │   │   │   └── themes.xml               # المواضيع
│   │   │   │   │
│   │   │   │   ├── drawable/
│   │   │   │   │   ├── ic_launcher.xml          # أيقونة التطبيق
│   │   │   │   │   └── ic_launcher_round.xml    # أيقونة مستديرة
│   │   │   │   │
│   │   │   │   └── xml/
│   │   │   │       ├── data_extraction_rules.xml
│   │   │   │       └── backup_rules.xml
│   │   │   │
│   │   │   └── AndroidManifest.xml              # بيانات التطبيق
│   │   │
│   │   └── test/
│   │       └── (ملفات الاختبار)
│   │
│   ├── build.gradle.kts                         # إعدادات Gradle
│   ├── proguard-rules.pro                       # قواعد Obfuscation
│   └── Android.mk
│
├── gradle/
│   └── wrapper/
│       └── gradle-wrapper.properties
│
├── build.gradle.kts                             # ملف Gradle الجذر
├── settings.gradle.kts                          # إعدادات المشروع
├── gradle.properties                            # خصائص Gradle
├── gradlew                                      # Gradle Wrapper (Linux/Mac)
├── gradlew.bat                                  # Gradle Wrapper (Windows)
├── build.sh                                     # سكريبت البناء (Linux/Mac)
├── build.bat                                    # سكريبت البناء (Windows)
├── README.md                                    # دليل باللغة الإنجليزية
├── GUIDE_AR.md                                  # دليل باللغة العربية
└── STRUCTURE.md                                 # هذا الملف
```

## وصف الملفات الرئيسية:

### MainActivity.kt
- يحتوي على الكود الرئيسي للتطبيق
- إعداد WebView
- تحميل الموقع https://www.chatliyily.com/
- معالجة الأزرار والتنقل

### activity_main.xml
- تصميم واجهة المستخدم
- يحتوي على WebView

### build.gradle.kts
- إعدادات البناء
- الحد الأدنى والأقصى لإصدار Android
- الإصدار والإمضاء الرقمي

### AndroidManifest.xml
- معلومات التطبيق الأساسية
- الأنشطة والخدمات
- الصلاحيات المطلوبة

## دورة الحياة:

1. **فتح التطبيق**: يبدأ MainActivity
2. **تحميل WebView**: تتم إعادة تشكيل العنصر
3. **فتح الموقع**: تحميل https://www.chatliyily.com/
4. **التفاعل**: المستخدم يتفاعل مع الموقع
5. **الإغلاق**: إلغاء تخصيص الموارد

## البناء والنشر:

### بناء Debug:
```bash
./gradlew assembleDebug
```

### بناء Release AAB:
```bash
./gradlew bundleRelease
```

### بناء Release APK:
```bash
./gradlew assembleRelease
```

---

تم إنشاء المشروع بنجاح! ابدأ التطوير الآن! 🚀
