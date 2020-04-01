Pod::Spec.new do |s|
  s.name         = "RescueLive"
  s.version      = "1.0.0-beta.1"
  s.summary      = "LogMeIn Rescue Live SDK for iOS."
  s.description  = <<-DESC
The Rescue Live Mobile SDK allows your customers to establish a Rescue Live support session within your app.
                   DESC
  s.homepage     = "https://www.logmeinrescue.com/"
  s.license      = { :type => 'Custom', :file => 'LICENSE' }
  s.author       = "LogMeIn Inc."
  s.platform     = :ios, "11.0"
  s.source       = { :http => "https://github.com/LogmeinRescue/Rescue-Live-iOS-SDK/releases/download/1.0.0-beta.1/rescue-live-ios-sdk-1.0.0-beta.1.zip",
  :sha256 => "3d3405c062c7376eaf02a7cf2087f1dc2c074bdec807f3872d082784ff2f9162"
   }
  s.cocoapods_version = '>= 1.9.0'
  s.swift_version = '5.0'

  s.dependency 'Starscream', '~> 3.1.1'
  s.frameworks = 'UIKit', 'CoreVideo', 'Security'
  s.libraries = 'z', 'sqlite3', 'iconv'
  s.user_target_xcconfig = { "EMBEDDED_CONTENT_CONTAINS_SWIFT" => "YES" }
  
  s.vendored_frameworks = 'Frameworks/RescueLive.xcframework', 'Frameworks/RescueLiveCore.framework', 'Frameworks/LMICoreMediaAppEx.framework'
end
