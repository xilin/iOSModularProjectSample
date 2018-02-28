platform :ios, '8.0'

# ignore all warnings from all pods
inhibit_all_warnings!

project 'ModuleSample.xcodeproj'

target 'ModuleSample' do

pod 'BeeHive', '~> 1.5.1'
pod 'MGJRouter', '~> 0.9.3'

end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '8.0'
        end
    end
end
