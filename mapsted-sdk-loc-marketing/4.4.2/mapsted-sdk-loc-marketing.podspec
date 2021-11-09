 Pod::Spec.new do |s|  
    s.name              = 'mapsted-sdk-loc-marketing'
    s.version           = '4.4.2'
    s.summary           = 'Mapsted Mobile SDK for location marketing'
    s.homepage          = 'https://mapsted.com/'

    s.author            = { 'Mapsted' => 'https://mapsted.com' }
    s.license          = 'Mapsted Corp.'

    s.platform          = :ios
    s.source            = { :git => "file:///Users/Daniel/Projects/Pods/mapsted-sdk-loc-marketing/", :tag => s.version }
    s.source_files  = "LocationMarketing.framework/Headers/*.{h,m}"
    s.ios.deployment_target = '12.3'
    s.ios.vendored_frameworks = "LocationMarketing.framework"

    s.libraries = "z", "c++"

    s.dependency 'mapsted-sdk-core'
    s.dependency 'mapsted-sdk-triggers-core'
    
    s.swift_version = '5.0'
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }
end  
