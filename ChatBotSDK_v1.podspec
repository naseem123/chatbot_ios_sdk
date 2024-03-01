Pod::Spec.new do |s|
  s.name          = "ChatBotSDK_v1"
  s.version       = "10.1"
  s.summary       = "iOS SDK for ChatBot"
  s.description   = "iOS SDK for ChatBot,"
  s.homepage      = "https://github.com/ShivMohan1889/ChatBotSDK"
  s.license       = "MIT"
  s.author        = "Shiv"
  s.platform      = :ios, "13.0"
  s.swift_version = "5.0"
  s.source        = {
    :git => "https://github.com/ShivMohan1889/ChatBotSDK.git",
    :tag => "#{s.version}"
  }
  s.static_framework = true
  s.source_files        = "ChatBotSDK/**/*.{h,m,swift}"
  s.public_header_files = "ChatBotSDK/**/*.h"
  
  
s.dependency 'chatbot_sdk_channel_v2'
  
 #s.vendored_frameworks = [
 #  'Frameworks/App.xcframework',
 #  'Frameworks/Flutter.xcframework',
 #  'Frameworks/FlutterPluginRegistrant.xcframework',
 #  'Frameworks/sqflite.xcframework',
 #  'Frameworks/url_launcher_ios.xcframework',
 #  'Frameworks/webview_flutter_wkwebview.xcframework',
 #  'Frameworks/shared_preferences_foundation.xcframework',
 #  'Frameworks/path_provider_foundation.xcframework',
 #]
end
