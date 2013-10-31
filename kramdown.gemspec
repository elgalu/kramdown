# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kramdown/version'

Gem::Specification.new do |spec|

  spec.platform      = Gem::Platform::RUBY
  spec.name          = "kramdown"
  spec.version       = Kramdown::VERSION
  spec.summary       = %q{kramdown is first and foremost a library for converting text written in a superset of Markdown to HTML. However, due to its modular architecture it is able to support additional input and output formats.}
  spec.description   = %q{A free GPL-licensed Ruby library for parsing and converting a superset of Markdown}

  spec.required_ruby_version     = '>= 1.8.5'
  spec.required_rubygems_version = '>= 1'

  spec.license       = 'MIT'

  spec.authors       = ["Thomas Leitner"]
  spec.email         = ["t_leitner@gmx.at"]
  spec.homepage      = "http://kramdown.rubyforge.org/"
  spec.rubyforge_project = 'kramdown'

  spec.require_paths = ["lib"]
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.default_executable = 'kramdown'

  spec.has_rdoc      = true
  spec.rdoc_options  = ['--main', 'lib/kramdown/document.rb']

  spec.add_development_dependency 'rake',     '~> 10.1'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'coderay',  '~> 1.1'
  spec.add_development_dependency 'stringex', '~> 2.1'
  spec.add_development_dependency 'prawn',    '~> 1.0.0.rc2'

end
