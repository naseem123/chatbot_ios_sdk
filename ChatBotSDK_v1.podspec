Pod::Spec.new do |s|
  s.name          = "ChatBotSDK_v2"
  s.version       = "1.0.18"
  s.summary       = "iOS SDK for ChatBot"
  s.description   = "iOS SDK for ChatBot,"
  s.homepage      = "https://github.com/naseem123/chatbot_ios_sdk"
  s.license       = "MIT"
  s.author        = "Suhail T S"
  s.platform      = :ios, "13.0"
  s.swift_version = "5.0"
  s.source        = {
    :git => "https://github.com/naseem123/chatbot_ios_sdk.git",
    :tag => "#{s.version}"
  }
  s.static_framework = true
  s.source_files        = "ChatBotSDK/**/*.{h,m,swift}"
  s.public_header_files = "ChatBotSDK/**/*.h"
  
  
s.dependency 'chatbot_sdk_channel_flutter_1'
  
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
