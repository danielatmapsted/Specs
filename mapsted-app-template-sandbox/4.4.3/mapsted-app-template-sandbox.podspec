Pod::Spec.new do |s|  
    s.name              = 'mapsted-app-template-sandbox'
    s.version           = '4.4.3'
    s.summary           = 'Mapsted AppTemplate (Sandbox)'
    s.homepage          = 'https://mapsted.com/'

    s.author            = { 'Mapsted' => 'https://mapsted.com' }
    s.license          = 'Mapsted Corp.'

    s.platform          = :ios
    s.source            = { :git => "file:///Users/Daniel/Projects/Pods/mapsted-app-template-sandbox/" }

    s.source_files  =  "AppTemplateSandbox.framework/Headers/*.{h,m}"

    s.ios.deployment_target = '12.3'
    s.ios.vendored_frameworks = "AppTemplateSandbox.framework"
    s.libraries = "z", "c++"
    s.ios.framework  = 'GLKit'

    s.dependency 'mapsted-app-template-core'
 
    s.swift_version = '5.0'
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }
end 
