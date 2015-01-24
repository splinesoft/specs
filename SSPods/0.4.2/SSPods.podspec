Pod::Spec.new do |s|
  s.name         = "SSPods"
  s.version      = "0.4.2"
  s.summary      = "Splinesoft Pods."
  s.homepage     = "http://www.splinesoft.net"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Jonathan Hersh" => "jon@her.sh" }
  s.source       = { :git => "Stash@stash.her.sh:sspods", :tag => s.version.to_s }
  s.platform     = :ios, '8.0'
  s.requires_arc = true
  
  s.ios.deployment_target = "7.0"
    
  s.source_files = "SSPods/*.{h,m}"

  s.frameworks = 'UIKit', 'QuartzCore', 'AudioToolbox'
    
  s.dependency 'BlocksKit', '2.2.5'
  s.dependency 'StandardPaths', '1.6.3'

  s.subspec 'Additions' do |sp|
    sp.source_files = 'Additions/*.{h,m}'
  end
  
  s.subspec 'Models' do |sp|
    sp.dependency 'MagicalRecord', '2.2'
    sp.source_files = 'Models/*.{h,m}'
  end
    
  s.subspec 'All' do |sp|
    sp.dependency 'SSPods/Additions'
    sp.dependency 'SSPods/Models'
  end
  
  s.default_subspec = 'All'
end
