Pod::Spec.new do |s|  
    s.name              = 'mapsted-sdk-triggers-core'
    s.version           = '4.4.2'
    s.summary           = 'Mapsted Mobile SDK for Triggered Notifications'
    s.homepage          = 'https://mapsted.com/'

    s.author            = { 'Mapsted' => 'https://mapsted.com' }
    s.license          = 'Mapsted Corp.'

    s.platform          = :ios
    s.source            = { :git => "file:///Users/Daniel/Projects/Pods/mapsted-sdk-triggers-core/", :tag => s.version }
    s.source_files  = "MapstedTriggersCore.framework/Headers/*.{h,m}"
    s.ios.deployment_target = '12.3'
    s.ios.vendored_frameworks = "MapstedTriggersCore.framework"

    s.libraries = "z", "c++"

    s.dependency 'mapsted-sdk-core'
    
    s.swift_version = '5.0'
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }
end  
