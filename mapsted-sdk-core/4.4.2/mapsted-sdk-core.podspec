Pod::Spec.new do |s|  
    s.name              = 'mapsted-sdk-core'
    s.version           = '4.4.2'
    s.summary           = 'Mapsted Mobile SDK for indoor positioning'
    s.homepage          = 'https://mapsted.com/'

    s.author            = { 'Mapsted' => 'https://mapsted.com' }
    s.license          = 'Mapsted Corp.'

    s.platform          = :ios 
    s.source            = { :git => "file:///Users/Daniel/Projects/Pods/mapsted-sdk-core/", :tag => s.version }
    s.source_files  = "MapstedCore.framework/Headers/*.{h,m}"

    s.ios.deployment_target = '12.3'
    s.ios.vendored_frameworks = 'MapstedCore.framework'

    s.libraries = "z", "c++"
    
    s.dependency 'Alamofire'
    s.dependency 'Alamofire-Synchronous', '~> 4.0'
    s.dependency 'CocoaMQTT'
    s.dependency 'SSZipArchive'
    s.dependency 'AWSMobileClient'
    s.dependency 'AWSS3'

    s.swift_version = '5.0'
    
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }
end  
