require_relative 'lib/top_100/version'
# lib = File.expand_path("../lib", __FILE__)
# $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
# require 'lib/top_100/version'


Gem::Specification.new do |spec|
  spec.name          = "top_100_pinball"
  spec.version       = Top100Pinball::VERSION
  spec.authors       = ["ohletamyleta"]
  spec.email         = ["ohletamyleta@gmail.com"]

  spec.summary       = %q{"Search the Pinside Top 100 Pinball Games rankings."}
  spec.homepage      = "https://github.com/ohletamyleta/top_100_pinball"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")
  

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ohletamyleta/top_100_pinball"
  #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  #Dir.chdir(File.expand_path('..', __FILE__)) do
  spec.files         = 
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
 
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  #, "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

  spec.add_dependency "nokogiri"

end