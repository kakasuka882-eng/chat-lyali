# Advanced ProGuard Rules for Chat Liyali Zaman

## WebView Configuration
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}
-keep public class **.R$*
-keep public class android.webkit.WebView {
    public *;
}
-keepclassmembers class android.webkit.WebView {
    public *;
}
-keepclassmembers class android.webkit.WebViewClient {
    public *;
}

## Android Classes
-keep public class android.** { public protected *; }
-keep public interface android.** { *; }
-keepclasseswithmembernames class android.** {
    native <methods>;
}

## AndroidX
-keep class androidx.** { *; }
-keep interface androidx.** { *; }
-keepnames class androidx.** { *; }
-keepclassmembers class androidx.** {
    public *;
}

## Kotlin
-keep class kotlin.** { *; }
-keep interface kotlin.** { *; }
-keep class kotlinx.** { *; }
-keep interface kotlinx.** { *; }
-dontwarn kotlin.**
-dontwarn kotlinx.**

## Application Classes
-keep class com.chatliyali.chatapp.** { *; }
-keepclassmembers class com.chatliyali.chatapp.** {
    public *;
}

## Activities
-keep class * extends android.app.Activity
-keep class * extends android.app.Service
-keep class * extends android.content.BroadcastReceiver
-keep class * extends android.content.ContentProvider
-keep class * extends android.app.Fragment

## R Classes
-keepclassmembers class **.R$* {
    public static <fields>;
}

## BuildConfig
-keep class **.BuildConfig { *; }

## JSON Parsing
-keepclassmembers class * {
    *** *ToJson(...);
    *** *FromJson(...);
}

## Serialization
-keep class * implements java.io.Serializable {
    static final long serialVersionUID;
    static final java.io.ObjectStreamField[] serialPersistentFields;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    !static !transient <fields>;
    private static Object writeReplace();
    private Object readResolve();
}

## Keep Parcelable
-keep class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}

## Remove Logging
-assumenosideeffects class android.util.Log {
    public static *** d(...);
    public static *** v(...);
    public static *** i(...);
}

## Keep Line Numbers for Crash Reports
-keepattributes SourceFile,LineNumberTable
-renamesourcefileattribute SourceFile

## optimization
-optimizationpasses 5
-dontoptimize

## Obfuscation
-keep,allowshrinking,allowoptimization class * {
    *** *(...);
}
-keepclassmembernames class * {
    java.lang.Class class$(...);
    java.lang.Class class$(..., ...);
}

# Preserve line numbers
-renamesourcefileattribute SourceFile
-keepattributes SourceFile,LineNumberTable
