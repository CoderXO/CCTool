
Pod::Spec.new do |s|

  s.name         = 'CCTool'
  s.version      = ‘1.0.0’
  s.summary      = 'A short description of CCTool'
  s.homepage     = 'https://github.com/CoderXO/CCTool'
  s.license      = 'MIT'
  s.author       = {'cxl' => '765314638@qq.com'}
  s.platform     = :ios, '8.0'
  s.source       = {:git => 'https://github.com/CoderXO/CCTool.git', :tag => s.version}
  s.source_files  = 'CCTool/Tool/*.{h,m}'
  s.requires_arc = true

end
