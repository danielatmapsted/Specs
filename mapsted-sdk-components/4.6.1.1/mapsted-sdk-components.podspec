Pod::Spec.new do |s|  
    s.name              = 'mapsted-sdk-components'
    s.version           = '4.6.1'
    s.summary           = 'Mapsted Mobile SDK for Reusable Components'
    s.homepage          = 'https://mapsted.com/'

    s.author            = { 'Mapsted' => 'https://mapsted.com' }
    s.license          = 'Mapsted Corp.'

    s.platform          = :ios
    s.source            = { :git => "file:///~/Projects/Pods/mapsted-sdk-components/" }
    s.source_files  = "MapstedComponentsUI.framework/Headers/*.{h,m}", "MapstedComponentsCore.framework/Headers/*.{h,m}"
    s.ios.deployment_target = '12.3'
    s.ios.vendored_frameworks = "MapstedComponentsUI.framework", "MapstedComponentsCore.framework"

    s.libraries = "z", "c++"

    s.dependency 'mapsted-sdk-core'
    s.dependency 'mapsted-sdk-alerts'
    
    s.swift_version = '5.0'
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }
end
