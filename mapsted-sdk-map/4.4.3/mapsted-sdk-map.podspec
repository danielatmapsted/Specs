Pod::Spec.new do |s|  
    s.name              = 'mapsted-sdk-map'
    s.version           = '4.4.3'
    s.summary           = 'Mapsted Mobile SDK for maps'
    s.homepage          = 'https://mapsted.com/'

    s.author            = { 'Mapsted' => 'https://mapsted.com' }
    s.license          = 'Mapsted Corp.'

    s.platform          = :ios
    s.source            = { :git => "file:///Users/Daniel/Projects/Pods/mapsted-sdk-map/", :tag => s.version }

    s.source_files  =  "MapstedMap.framework/Headers/*.{h,m}", "coremap.framework/Headers/*.{h,m}"

    s.ios.deployment_target = '12.3'
    s.ios.vendored_frameworks = "MapstedMap.framework","coremap.framework"
    s.libraries = "z", "c++"
    s.ios.framework  = 'GLKit'

    s.dependency 'mapsted-sdk-core'
    s.dependency 'mapsted-sdk-core-map'

    s.swift_version = '5.0'
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }
end 
