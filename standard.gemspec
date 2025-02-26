lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "standard/version"

Gem::Specification.new do |spec|
  spec.name = "standard-mkv"
  spec.version = Standard::VERSION
  spec.authors = ["Justin Searls", "Francesco Canessa - makevoid"]
  spec.email = ["searls@gmail.com", "makevoid@gmail.com"]
  spec.required_ruby_version = ">= 2.5.0"

  spec.summary = "Ruby Style Guide, with linter & automatic code fixer - @makevoid's fork"
  spec.homepage = "https://github.com/makevoid/standard"

  spec.files = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop", "1.20.0"
  spec.add_dependency "rubocop-performance", "1.11.5"
end
