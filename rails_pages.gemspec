# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name = "rails_pages"
  spec.version = "0.1.3"
  spec.authors = ["afeiship"]
  spec.email = ["1290657123@qq.com"]

  spec.summary = %q{Rails static pages generator.}
  spec.description = %q{Generate rails static pages.}
  spec.homepage = "https://github.com/afeiship/rails_pages"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir['Gemfile', 'LICENSE', 'README.md', 'lib/**/*', 'app/**/*']
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency 'rails', ['>= 4.0', '< 6']

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
