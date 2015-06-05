Pod::Spec.new do |s|
  s.name         = "SSPods"
  s.version      = "0.5.1"
  s.summary      = "Splinesoft Pods."
  s.homepage     = "http://www.splinesoft.net"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Jonathan Hersh" => "jon@her.sh" }
  s.source       = { :git => "git@github.com:jhersh/SSPods.git", :tag => s.version.to_s }
  s.platform     = :ios, '7.0'
  s.requires_arc = true
  
  s.ios.deployment_target = "7.0"
  
  s.subspec 'Core' do |sp| 
    sp.source_files = ['SSPods/*.{h,m}', 'Additions/*.{h,m}', 'Models/*.{h,m}']
    sp.frameworks = 'UIKit', 'QuartzCore', 'AudioToolbox', 'CoreData'
      
    sp.dependency 'BlocksKit', '2.2.5'
    sp.dependency 'MagicalRecord', '2.3.0'
  end

  s.subspec 'Unsafe' do |sp|
    sp.dependency 'SSPods/Core'
    sp.source_files = 'Unsafe/*.{h,m}'
  end

  s.subspec 'All' do |sp|
    sp.dependency 'SSPods/Core'
    sp.dependency 'SSPods/Unsafe'
  end  

  s.default_subspec = 'All'
end
