source 'https://github.com/LivePersonInc/iOSPodSpecs.git'

# Uncomment the next line to define a global platform for your project
platform :ios, '13.0'

def shared_pods
pod 'LPMessagingSDK'
end

target 'GithubActions' do
# Comment the next line if you don't want to use dynamic frameworks
use_frameworks!
shared_pods
# Pods for GithubActions

end

target 'GithubActionsTests' do
inherit! :search_paths
# Pods for testing
shared_pods
end
