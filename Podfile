
platform :ios, '8.0'
workspace 'G7_Component.xcworkspace'
#use_frameworks!
source 'https://github.com/CocoaPods/Specs.git'
source 'git@git.chinawayltd.com:ios/common/Specs.git'

target 'G7_Component' do
project 'G7_Component.xcodeproj'

target 'G7_ComponentTests' do
inherit! :search_paths
end
end

target 'Example' do
    project 'Example.xcodeproj'
    pod 'G7_Component', :path => '../G7_ComponentTemplate'
end

################## Pods Script ###################
#配置Pods工程预编译宏
#设置编译等级为0，否则example工程无法断点自己的库
post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            if config.name.include?('Debug')
                config.build_settings['GCC_OPTIMIZATION_LEVEL'] = 0
            end
        end
    end
end
