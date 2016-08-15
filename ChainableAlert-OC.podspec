Pod::Spec.new do |s|

  s.name         = "ChainableAlert-OC"
  s.version      = "0.6"
  s.license      = "Copyright (c) 2016 Ding"
  s.summary      = "Chainable use of Alert."
  s.homepage     = "https://github.com/DingHub/ChainableAlert-OC"
  s.license      = "MIT"
  s.author       = { "DingHub" => "love-nankai@163.com" }
  s.source       = { :git => "https://github.com/DingHub/ChainableAlert-OC.git", :tag => "0.6" }
  s.source_files  = "Source/*.{h,m}"
  s.platform     = :ios
  s.platform     = :ios, "6.0"
  s.requires_arc = true

end
