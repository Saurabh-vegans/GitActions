source 'https://github.com/LivePersonInc/iOSPodSpecs.git'
source 'https://github.com/CocoaPods/Specs.git'

# Uncomment the next line to define a global platform for your project
platform :ios, '13.0'

target 'GithubActions' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
pod 'LPMessagingSDK'
  # Pods for GithubActions

  target 'GithubActionsTests' do
    inherit! :search_paths
    # Pods for testing
  end

end

post_install do |installer_representation|
    installer_representation.pods_project.targets.each do |target|
      puts target.name
      if target.name == 'LPMessagingSDK'
        target.build_configurations.each do |config|
          config.build_settings['ONLY_ACTIVE_ARCH'] = 'YES'
        end
      end
    end
end
