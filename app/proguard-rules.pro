# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile
#自定义混淆配置

#配置UserBean类名不被混淆+变量和方法混淆  语法 -keep class 全类名
#-keep class cn.wqgallery.myproguard.UserBean


#配置UserBean类名+类里面变量+方法都不被混淆  语法 -keep class 全类名{*;}
#-keep class cn.wqgallery.myproguard.UserBean{*;}

#配置UserBean类指定的成员变量不被混淆+类名混淆  语法 -keep class 全类名
#-keepclassmembers  class cn.wqgallery.myproguard.UserBean{*;}

#类名不混淆+ 变量方法混淆
#-keepclasseswithmembers class cn.wqgallery.myproguard.UserBean{*;}

#配置类里面的native 方法不被混淆
-keepclasseswithmembers class cn.wqgallery.myproguard.UserBean{
native <methods>;
}