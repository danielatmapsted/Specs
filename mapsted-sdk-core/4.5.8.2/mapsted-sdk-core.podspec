Pod::Spec.new do |s|  
    s.name              = 'mapsted-sdk-core'
    s.version           = '4.5.8.2'
    s.summary           = 'Mapsted Mobile SDK for indoor positioning'
    s.homepage          = 'https://mapsted.com/'

    s.author            = { 'Mapsted' => 'https://mapsted.com' }
    s.license          = 'Mapsted Corp.'

    s.platform          = :ios 
    s.source            = { :git => "file:///Users/Daniel/Projects/Pods/mapsted-sdk-core/" }
    s.source_files  = "MapstedCore.framework/Headers/*.{h,m}"

    s.ios.deployment_target = '12.3'
    s.ios.vendored_frameworks = 'MapstedCore.framework'

    s.libraries = "z", "c++"
    
    #s.swift_version = '5.0'
  
    s.dependency 'CocoaMQTT', '~>1.0'
    s.dependency 'SSZipArchive'
    s.dependency 'AWSMobileClient'
    s.dependency 'AWSS3'

    
    #s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }
    #s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }
end  

