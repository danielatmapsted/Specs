Pod::Spec.new do |s|  
    s.name              = 'mapsted-sdk-map-ui'
    s.version           = '4.4.3'
    s.summary           = 'Mapsted Mobile SDK for map UI'
    s.homepage          = 'https://mapsted.com/'

    s.author            = { 'Mapsted' => 'https://mapsted.com' }
    s.license          = 'Mapsted Corp.'

    s.platform          = :ios
    s.source            = { :git => "file:///Users/Daniel/Projects/Pods/mapsted-sdk-map-ui/" }
    s.source_files  = "MapstedMapUi.framework/Headers/*.{h,m}"
    s.ios.deployment_target = '12.3'
    s.ios.vendored_frameworks = "MapstedMapUi.framework"

    s.libraries = "z", "c++"

    s.dependency 'mapsted-sdk-core'
    s.dependency 'mapsted-sdk-map'
    s.dependency 'mapsted-sdk-components'
    s.dependency 'mapsted-sdk-alerts'
    s.dependency 'mapsted-sdk-loc-marketing'
    
    s.swift_version = '5.0'
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }
end  
