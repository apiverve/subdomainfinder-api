Pod::Spec.new do |s|
  s.name             = 'APIVerveSubdomainFinder'
  s.version          = '1.2.3'
  s.summary          = 'Subdomain Finder discovers active subdomains and their resolved IP addresses for any target domain.'
  s.description      = <<-'DESC'
Subdomain Finder discovers active subdomains and their resolved IP addresses for any target domain. It checks certificate transparency logs and common hostnames, returning matched hostnames, root A records, and scan completion status.

This iOS/macOS SDK provides a convenient way to access the Subdomain Finder from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/subdomainfinder?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/subdomainfinder-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveSubdomainFinder/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
