class karol::tools::android {
        include android::sdk
        include android::platform_tools
        include eclipse::java
    package { 'ant':
    }
}
