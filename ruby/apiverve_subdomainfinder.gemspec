# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_subdomainfinder"
  spec.version       = "1.2.2"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Subdomain Finder API - Ruby Client"
  spec.description   = "Subdomain Finder discovers active subdomains and their resolved IP addresses for any target domain. It checks certificate transparency logs and common hostnames, returning matched hostnames, root A records, and scan completion status."
  spec.homepage      = "https://apiverve.com/marketplace/subdomainfinder?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/subdomainfinder-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/subdomainfinder"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
