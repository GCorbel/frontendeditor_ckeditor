# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'frontendeditor_ckeditor/version'

Gem::Specification.new do |gem|
  gem.name          = "frontendeditor_ckeditor"
  gem.version       = FrontendeditorCkeditor::VERSION
  gem.authors       = ["gcorbel"]
  gem.email         = ["guirec.corbel@gmail.com"]
  gem.description   = %q{Write a gem description}
  gem.summary       = %q{Write a gem summary}
  gem.homepage      = ""

  gem.files         = Dir["lib/**/*"] + Dir["vendor/**/*"] + ["Rakefile", "README.md"]
  gem.require_paths = ["lib"]
end
