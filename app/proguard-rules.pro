# WebView
-keepclassmembers class fqcn.of.javascript.interface.for.webview {
    public *;
}

# Keep BuildConfig
-keep class **.BuildConfig { *; }

# Keep R
-keepclassmembers class **.R$* {
    public static <fields>;
}

# Kotlin
-keep class kotlin.** { *; }
-keep interface kotlin.** { *; }
-dontwarn kotlin.**

# AndroidX
-keep class androidx.** { *; }
-keep interface androidx.** { *; }
