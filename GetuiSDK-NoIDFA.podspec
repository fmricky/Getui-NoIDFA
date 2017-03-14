Pod::Spec.new do |s|
  s.name = 'GetuiSDK-NoIDFA'
  s.version = '1.6.2.0'
  s.ios.deployment_target = '7.0'

  s.license = {'type' => 'Copyright','text' => '个推云推送，All Rights Reserved.'}
  s.summary = 'Getui Push SDK NoIDFA Version'
  s.homepage = 'http://docs.getui.com/mobile/ios/overview/'
  s.author = { 'Geitui' => 'http://www.igetui.com/' }
  s.source = { :git => 'https://github.com/fmricky/Getui-NoIDFA.git', :tag => s.version.to_s }

  s.description = '个推 iOS SDK 无IDFA版本'

  s.requires_arc = true
  s.framework = 'SystemConfiguration','CFNetwork','Security','AVFoundation','CoreLocation','CoreTelephony','MobileCoreServices'
  s.libraries = 'z','sqlite3','c++'
  
  s.default_subspec = 'Core'

  s.subspec 'Core' do |core|
    core.source_files = 'GeTuiSdk.h'
    core.vendored_libraries = 'libGeTuiSdk-1.6.2.0-noidfa.a'
  end

  s.subspec 'GetuiExtSdk' do |ext|
    ext.source_files = 'GeTuiExtSdk.h'
    ext.framework = 'UserNotifications'
    ext.version = '1.1.0'
    ext.vendored_libraries = 'libGtExtensionSdk-1.1.0.a'
  end
end