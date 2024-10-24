require 'my_gem/version'

Gem::Specification.new do |spec|
  spec.name          = "my_gem"
  spec.version       = MyGem::VERSION
  spec.authors       = ["xxenyam"]
  spec.email         = ["popova072005@gmail.com"]
  
  spec.summary       = "summary"
  spec.description   = "description"
  spec.license       = "MIT"

  spec.files = [
    "lib/my_gem.rb",
    "lib/my_gem/version.rb",
    "README.md",
    "CHANGELOG.md",
  ]
  
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.5.22"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.13"
end
