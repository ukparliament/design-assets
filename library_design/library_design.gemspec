# -*- encoding: utf-8 -*-
# frozen_string_literal: true

$:.push File.expand_path("../lib", __FILE__)
require "library_design/version"

Gem::Specification.new do |s|
  s.name        = "library_design"
  s.version     = LibraryDesign::VERSION.dup
  s.platform    = Gem::Platform::RUBY
  s.licenses    = ["?"]
  s.summary     = "Library Design system"
  s.email       = "brookr@parliament.uk"
  s.homepage    = "https://github.com/ukparliament/design_system_gem"
  s.description = "Design system"
  s.authors     = ['James Jefferies', 'Robert Brook', 'Michael Smethurst']
  s.metadata    = {
    "homepage_uri"      => "https://github.com/ukparliament/design-assets",
    "documentation_uri" => "https://github.com/ukparliament/design-assets",
    "changelog_uri"     => "https://github.com/ukparliament/design-assets/blob/main/CHANGELOG.md",
    "source_code_uri"   => "https://github.com/ukparliament/design-assets",
    "bug_tracker_uri"   => "https://github.com/ukparliament/design-assets/issues",
    "wiki_uri"          => "https://github.com/ukparliament/design-assets/wiki"
  }

  # Ignore all the other stuff
  s.files         = Dir["{app,lib}/**/*", "README.md"]
  s.require_paths = ["lib"]
  s.required_ruby_version = '>= 3.4.4'

  s.post_install_message = %q{
    [LIBRARY DESIGN] - now you've installed this, you can include the partials and stylesheets
  }
end