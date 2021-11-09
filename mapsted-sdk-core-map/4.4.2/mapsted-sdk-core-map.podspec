Pod::Spec.new do |s|  
    s.name              = 'mapsted-sdk-core-map'
    s.version           = '4.4.2'
    s.summary           = 'Mapsted Core Map SDK'
    s.homepage          = 'https://mapsted.com/'

    s.author            = { 'Mapsted' => 'https://mapsted.com' }
    s.license          = 'Mapsted Corp.'

    s.platform          = :ios
    s.source            = { :git => "file:///Users/Daniel/Projects/Pods/mapsted-sdk-map-core/", :tag => "4.4.2" }

    s.ios.deployment_target = '12.3'
    s.ios.vendored_frameworks = "4.4.2/MapSDK.framework"
    s.libraries = "z", "c++"
    s.ios.framework  = 'GLKit'

    s.swift_version = '5.0'
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }
end  
