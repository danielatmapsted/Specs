Pod::Spec.new do |s|  
    s.name              = 'mapsted-app-template-core'
    s.version           = '4.4.3'
    s.summary           = 'Mapsted AppTemplate (Core)'
    s.homepage          = 'https://mapsted.com/'

    s.author            = { 'Mapsted' => 'https://mapsted.com' }
    s.license          = 'Mapsted Corp.'

    s.platform          = :ios
    s.source            = { :git => "file:///Users/Daniel/Projects/Pods/mapsted-app-template-core/" }

    s.source_files  =  "AppTemplateCore.framework/Headers/*.{h,m}"

    s.ios.deployment_target = '12.3'
    s.ios.vendored_frameworks = "AppTemplateCore.framework"
    s.libraries = "z", "c++"
    s.ios.framework  = 'GLKit'

    s.dependency 'mapsted-sdk-core'
    s.dependency 'mapsted-sdk-map'
    s.dependency 'mapsted-sdk-map-ui'
    
    s.dependency 'mapsted-app-template'

    s.dependency 'mapsted-sdk-triggers-core'
    s.dependency 'mapsted-sdk-loc-marketing'
    s.dependency 'mapsted-sdk-alerts'
    
    s.swift_version = '5.0'
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }
end 
