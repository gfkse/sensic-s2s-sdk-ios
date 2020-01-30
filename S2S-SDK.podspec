Pod::Spec.new do |s|
    s.name              = 'S2S-SDK'
    s.version           = '1.11.1'
    s.summary           = 'S2S-SDK'
    s.homepage          = 'http://www.gfk.com/'
    s.author            = { 'GfK' => 'info@gfk.com' }
    s.platform          = :ios
    s.source            = { :http => 'https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.11.1/s2s_sdk_ios_1.11.1.zip'}
    s.ios.deployment_target = '8.0'
    s.ios.vendored_frameworks = 's2s_sdk_ios.framework'
    s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.1' }
end
