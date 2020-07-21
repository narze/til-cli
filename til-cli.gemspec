require_relative 'lib/til/cli/version'

Gem::Specification.new do |spec|
  spec.name          = "til-cli"
  spec.version       = Til::Cli::VERSION
  spec.authors       = ["Manassarn Manoonchai"]
  spec.email         = ["manassarn@gmail.com"]

  spec.summary       = %q{Generate Today I Learned entries}
  spec.homepage      = "https://github.com/narze/til-cli"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/narze/til-cli"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
