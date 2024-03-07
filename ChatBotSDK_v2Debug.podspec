Pod::Spec.new do |s|
  s.name          = "ChatBotSDK_v2Debug"
  s.module_name   = "ChatBotSDK"
  s.version       = "1.0.22"
  s.summary       = "iOS SDK for ChatBot"
  s.description   = "iOS SDK for ChatBot,"
  s.homepage      = "https://github.com/naseem123/chatbot_ios_sdk"
  s.author        = { 'Suhail T S' => 'suhail.ts-e@thinkresearch.com' }
  s.license       = "MIT"
  s.platform      = :ios, "13.0"
  s.swift_version = "5.0"
  s.source        = {
    :git => "https://github.com/naseem123/chatbot_ios_sdk.git",
    :tag => "#{s.version}"
  }
  s.static_framework = true
  s.source_files        = "ChatBotSDK/**/*.{h,m,swift}"
  s.public_header_files = "ChatBotSDK/**/*.h"
  
  
# s.dependency 'chatbot_sdk_channel_flutter_1'
  
 s.vendored_frameworks = [
  'Frameworks/Debug/App.xcframework',
  'Frameworks/Debug/Flutter.xcframework',
  'Frameworks/Debug/FlutterPluginRegistrant.xcframework',
  'Frameworks/Debug/sqflite.xcframework',
  'Frameworks/Debug/url_launcher_ios.xcframework',
  'Frameworks/Debug/webview_flutter_wkwebview.xcframework',
  'Frameworks/Debug/shared_preferences_foundation.xcframework',
  'Frameworks/Debug/path_provider_foundation.xcframework',
 ]
end


