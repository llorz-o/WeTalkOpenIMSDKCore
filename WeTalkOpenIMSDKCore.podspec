#
# Be sure to run `pod lib lint WeTalkOpenIMSDKCore.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WeTalkOpenIMSDKCore'
  s.version          = '1.0.0'
  s.summary          = 'WeTalk-OpenIM-SDK-Core'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  only for wetalk project use
                       DESC

  s.homepage         = 'https://github.com/llorz-o/WeTalkOpenIMSDKCore'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'WeTalkOpenIMSDKCore' => 'https://github.com/llorz-o/WeTalkOpenIMSDKCore' }
  s.source           = { :git => 'https://github.com/llorz-o/WeTalkOpenIMSDKCore.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'    
    
  valid_archs = ['armv7s','arm64','x86_64']
  s.xcconfig = {
    'VALID_ARCHS' =>  valid_archs.join(' '),
  }
  s.pod_target_xcconfig = {
      'ARCHS[sdk=iphonesimulator*]' => '$(ARCHS_STANDARD_64_BIT)'
  }
  
  s.vendored_frameworks = 'Framework/*.xcframework'
end
