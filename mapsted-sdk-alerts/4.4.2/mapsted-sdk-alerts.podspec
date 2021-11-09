Pod::Spec.new do |s|  
    s.name              = 'mapsted-sdk-alerts'
    s.version           = '4.4.2'
    s.summary           = 'Mapsted Mobile SDK for Alert Notifications'
    s.homepage          = 'https://mapsted.com/'

    s.author            = { 'Mapsted' => 'https://mapsted.com' }
    s.license          = 'Mapsted Corp.'

    s.platform          = :ios
    s.source            = { :git => "file:///Users/Daniel/Projects/Pods/mapsted-sdk-alerts/", :tag => s.version }
    s.source_files  = "MapstedAlerts.framework/Headers/*.{h,m}"
    s.ios.deployment_target = '12.3'
    s.ios.vendored_frameworks = "MapstedAlerts.framework"

    s.libraries = "z", "c++"

    s.dependency 'mapsted-sdk-core'
    s.dependency 'mapsted-sdk-triggers-core'
    
    s.swift_version = '5.0'
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }
end  
