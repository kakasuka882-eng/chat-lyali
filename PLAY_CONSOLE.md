google_play_console_instructions = """
🚀 تعليمات الرفع على Google Play Console

## الخطوة 1: إنشاء حساب Developer
1. اذهب إلى: https://play.google.com/console
2. انضم إلى Google Play Console (رسم 25 دولار لمرة واحدة)
3. ملأ المعلومات الشخصية

## الخطوة 2: إنشاء تطبيق جديد
1. اضغط "Create app"
2. اختر اللغة: العربية
3. اسم التطبيق: شات ليالى زمان
4. نوع التطبيق: Application
5. Free/Paid: اختر Free

## الخطوة 3: ملء معلومات التطبيق

### Basic Information:
- Developer Name: أدخل اسمك
- Email: بريدك الإلكتروني
- Website (optional): https://www.chatliyily.com/

### App Category:
- Social
- Communication

### Content Rating:
- ملأ نموذج Content Rating

### Target Audience:
- Teens and Adults

## الخطوة 4: رفع الملف

1. اذهب إلى: Release > Production
2. اضغط "Create release"
3. اضغط "Upload" ورفع ملف `app-release.aab`
4. انتظر التحقق (عادة 5 دقائق)

## الخطوة 5: إضافة الصور والوصف

### Screenshots (الصور):
- 2-8 صور
- الدقة: 1080x1920 أو 1440x2560 بكسل
- الصيغة: JPG أو PNG

### App Description:
الوصف يجب أن يشرح:
- "تطبيق للدردشة والتواصل مع واجهة سريعة وسهلة الاستخدام"
- "ميزات حديثة وتصميم جميل"
- "آمن وسريع"

### Promo Video (اختياري):
- فيديو قصير عن التطبيق

## الخطوة 6: الموافقة والنشر

1. اذهب إلى: Release > Production
2. اختر الإصدار الذي أنشأته
3. اضغط "Review release"
4. تأكد من جميع المعلومات
5. اضغط "Roll out to production"

## الانتظار:

- بعد النشر، قد يستغرق 2-4 ساعات حتى يظهر على Google Play
- بعض التطبيقات قد تأخذ وقتاً أطول للمراجعة

## البيانات المطلوبة:

✅ ملف app-release.aab
✅ الصور والوصف
✅ سياسة الخصوصية
✅ شروط الاستخدام
✅ تصنيف المحتوى

## رابط البحث بعد النشر:

بعد النشر، سيكون بإمكانك العثور على التطبيق:
https://play.google.com/store/apps/details?id=com.chatliyali.chatapp

---

تم النشر بنجاح! 🎉
"""

# حفظ في ملف
with open("PLAY_CONSOLE.md", "w", encoding="utf-8") as f:
    f.write(google_play_console_instructions)
