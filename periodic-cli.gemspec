
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "periodic/cli/version"

Gem::Specification.new do |spec|
  spec.name          = "periodic-cli"
  spec.version       = Periodic::Cli::VERSION
  spec.authors       = ["cbrnrd"]
  spec.email         = ["0xCB@protonmail.com"]

  spec.summary       = %q{Command line tools for the common man}
  spec.homepage      = "https://github.com/cbrnrd/periodic"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "krypton"
  
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
