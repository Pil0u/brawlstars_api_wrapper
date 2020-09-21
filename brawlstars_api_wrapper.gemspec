require_relative 'lib/brawlstars_api_wrapper/version'

Gem::Specification.new do |spec|
  spec.name          = "brawlstars_api_wrapper"
  spec.version       = BrawlstarsApiWrapper::VERSION
  spec.authors       = ["Pierre-Loïc Pichon"]
  spec.email         = ["pierreloic.pichon@gmail.com"]

  spec.summary       = %q{brawlstars_api_wrapper provides a client wrapper for the official Brawl Stars API.}
  # spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/Pil0u/brawlstars_api_wrapper"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Pil0u/brawlstars_api_wrapper"
  spec.metadata["changelog_uri"] = "https://github.com/Pil0u/brawlstars_api_wrapper/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
