# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'frontendeditor_ckeditor/version'

Gem::Specification.new do |gem|
  gem.name          = "frontendeditor_ckeditor"
  gem.version       = FrontendeditorCkeditor::VERSION
  gem.authors       = ["gcorbel"]
  gem.email         = ["guirec.corbel@gmail.com"]
  gem.description   = %q{This is an editor for any rails application}
  gem.summary       = %q{This editor is integrable to any rails application}
  gem.homepage      = "https://github.com/GCorbel/frontendeditor_ckeditor"

  gem.files         = Dir["lib/**/*"] + Dir["vendor/**/*"] + ["Rakefile", "README.md"]
  gem.require_paths = ["lib"]

  gem.add_dependency "frontendeditor"
end
