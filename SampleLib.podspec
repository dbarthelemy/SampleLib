Pod::Spec.new do |s|
  s.name         =  'SampleLib'
  s.version      =  '0.0.1'
  s.license      =  { :type => 'MIT', :file => 'LICENSE' }
  s.homepage     =  'http://github.com/dbarthelemy/SampleLib'
  s.authors      =  { 'dbarthelemy' => 'dbarthelemy@imakeit4u.com' }
  s.source       =  { :git => 'https://github.com/dbarthelemy/SampleLib.git', :tag => s.version.to_s }

  s.summary      =  'Sample Library.'
  s.description  =  'This is a sample library structured as a Pod used as the basis for rapid prototyping of new idea.'

  s.platform     = :ios, '5.0'
  s.source_files = "Classes/**/*.{m,h}"
  s.public_header_files = 'Classes/SampleLib.h'
  s.resources = 'Assets'
  s.requires_arc = false

  s.frameworks = 'Foundation'
end
