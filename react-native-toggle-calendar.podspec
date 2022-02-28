require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.platforms    = { :ios => "9.0", :osx => "10.13" }

  s.source       = { :git => "https://github.com/varunon9/react-native-toggle-calendar.git", :tag => "v#{s.version}" }
  s.source_files  = "apple/**/*.{h,m}"

  s.dependency 'React-Core'
end
