Pod::Spec.new do |s|
    s.name              = 'S2S-SDK'
    s.version           = '1'
    s.summary           = 'S2S-SDK comes with third-party dependencies. In order to avoid particular dependencies, please use the respective subspecs.'
    s.homepage          = 'https://confluence-docu.gfk.com/pages/viewpage.action?pageId=19595365'
    s.author            = { 'GfK' => 'gfkSensic@gmail.com' }
    s.source            = { :http => 'https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/testing/1/s2s_sdk_ios_1.zip'}
    s.platforms = { :ios => "12.0" }
    s.ios.vendored_frameworks = 's2s_sdk_ios.xcframework'
    s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.1' } 
    s.dependency 'Sentry' , '8.17.0'

    s.subspec 'Bitmovin' do |bitmovin|
    bitmovin.dependency 'BitmovinPlayer'
    bitmovin.vendored_framework = 's2s_sdk_ios_bitmovin.xcframework'
    end

    s.subspec 'AVPlayer-GoogleAds' do |avplayer|
    avplayer.dependency 'GoogleAds-IMA-iOS-SDK'
    avplayer.vendored_framework = 's2s_sdk_ios_avplayer_googleAds.xcframework'
    end

    s.subspec 'AgentOnly' do |agent|
    agent.vendored_framework = 's2s_sdk_ios_agent_only.xcframework'
    end

  
end
