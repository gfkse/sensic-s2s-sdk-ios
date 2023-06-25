Pod::Spec.new do |s|
    s.name              = 'S2S-SDK'
    s.version           = '1'
    s.summary           = 'S2S-SDK'
    s.homepage          = 'http://www.gfk.com/'
    s.author            = { 'GfK' => 'info@gfk.com' }
    s.source            = { :http => 'https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/testing/1/s2s_sdk_ios_1.zip'}
    s.platforms = { :ios => "12.0" }
    s.ios.vendored_frameworks = 's2s_sdk_ios.xcframework'
    s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.1' } 

    s.subspec 'Bitmovin' do |bitmovin|
     bitmovin.dependency 'BitmovinPlayer'
     bitmovin.source_files = 's2s-sdk-ios/**/*.swift'
     
    end
    
end
