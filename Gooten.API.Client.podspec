Pod::Spec.new do |s|
  s.name = 'Gooten.API.Client'
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.version = '1.0.0'
  s.source = { :git => 'git@github.com:swagger-api/swagger-mustache.git', :tag => 'v1.0.0' }
  s.authors = Gooten
  s.license = 'Apache License, Version 2.0'
  s.homepage = 'gooten.com'
  s.summary = 'Gooten API Client Library'
  s.description = 'Gooten API Client Library'
  s.source_files = 'Gooten.API.Client/Classes/Swaggers/**/*.swift'
  s.dependency 'Alamofire', '~> 3.1.4'
end
