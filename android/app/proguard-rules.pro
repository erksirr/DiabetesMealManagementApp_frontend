# proguard-rules.pro
-keep class com.veepoo.protocol.** { *; }
-keep class com.inuker.bluetooth.** { *; }
-keepclassmembers class * extends com.veepoo.protocol.model.datas.** {
    public *;
}