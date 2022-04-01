Pod::Spec.new do |s|
    s.name              = 'S2S-SDK'
    s.version           = '1'
    s.summary           = 'S2S-SDK'
    s.homepage          = 'http://www.gfk.com/'
    s.author            = { 'GfK' => 'info@gfk.com' }
    s.source            = { :http => 'https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/testing/1/s2s_sdk_ios_1.zip'}
    s.platforms = { :ios => "9.0", :tvos => "12.4" }
    s.ios.vendored_frameworks = 's2s_sdk_ios.xcframework'
    s.tvos.vendored_frameworks = 's2s_sdk_ios.xcframework/tvOS-x86_64-simulator/s2s_sdk_tvos.framework'
    s.user_target_xcconfig = { 'VALID_ARCHS[sdk=iphonesimulator*]' => 'i386, x86_64' }
    s.pod_target_xcconfig = { 'VALID_ARCHS[sdk=iphonesimulator*]' => 'i386, x86_64' }
    s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.1' }
end
