

Pod::Spec.new do |s|
  s.name         = "MyApp"
  s.version      = "0.0.1"
  s.summary      = "MyApp is a library"
  s.description  = <<-DESC
                    This project is very import.
                   DESC
  s.homepage     = "https://github.com/BaoBaoJianqiang/MySwiftLib"
  s.platform     = :ios, "6.0"
  s.license      = "MIT"
  s.author             = { "jianqiang.bao" => "16230091@qq.com" }
  s.source       = { :git => "https://github.com/BaoBaoJianqiang/MyApp.git", :tag => "Configue0.0.1" }

  s.source_files  = "*.swift"
end
