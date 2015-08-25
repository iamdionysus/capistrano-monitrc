# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "capistrano-monitrc"
  spec.version       = "0.1.0"
  spec.authors       = %w(iamdionysus)
  spec.email         = %w(iamdionysus@gmail.com)

  spec.summary       = %q{capistrano3 monitrc download upload task}
  spec.homepage      = "https://github.com/iamdionysus/capistrano-monitrc"

  spec.files         = Dir["*.gemspec", "*.md", "lib/**/*.rb", "lib/**/*.rake"]
  spec.require_paths = ["lib"]

  spec.add_dependency "capistrano", "~> 3.1"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
