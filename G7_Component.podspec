#
#  Be sure to run `pod spec lint G7_TableViewManager.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata
  s.name         = "G7_Component"
  s.version      = "0.0.1"
  s.summary      = "这里是简要介绍"

  # This description is used to generate tags and improve search results.
  s.description  = <<-DESC
  这里是详细介绍
                   DESC

  s.homepage     = 'https://git.chinawayltd.com/ios/common/G7_ComponentTemplate'
  s.license    = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "fenglei" => "fenglei@g7.com.cn" }
  s.platform     = :ios, "8.0"

  # ――― Source Location
  s.source       = { :git => "git@git.chinawayltd.com:ios/common/G7_ComponentTemplate.git", :tag => "#{s.version}" }

  # ――― Source Code
  s.source_files = "Source/Classes/**/*.{h,m,mm}"
  #s.exclude_files = "SourceCode/Classes/test.m"

  # s.public_header_files = "Classes/**/*.h"

  # ――― Resources
  s.resources = ['Source/Assets/**/Localizable.strings','Source/Classes/**/*.xib']
  s.resource_bundles = {
      'G7_ComponentTemplate' => ['Source/Assets/Images.xcassets']
  }
  #s.exclude_files = 'SourceCode/Assets/**/AppIcon.appiconset/Contents.json'

  # ――― Project Linking
  s.frameworks = "UIKit", "Foundation"

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.
  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  
  # --- 第三方依赖
  # s.dependency 'G7_Foundation', '~> 0.1.0'

end
