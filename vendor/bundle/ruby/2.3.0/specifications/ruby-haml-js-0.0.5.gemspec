# -*- encoding: utf-8 -*-
# stub: ruby-haml-js 0.0.5 ruby lib

Gem::Specification.new do |s|
  s.name = "ruby-haml-js".freeze
  s.version = "0.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Dmytrii Nagirniak".freeze]
  s.date = "2013-09-17"
  s.description = "ruby-haml-js provides a Tilt template that you can use to compile HAML-JS templates into JS functions. Handy for using it wth Bakcbone.js, Spine.js etc.".freeze
  s.email = ["dnagir@gmail.com".freeze]
  s.homepage = "http://github.com/dnagir/ruby-haml-js".freeze
  s.rubyforge_project = "ruby-haml-js".freeze
  s.rubygems_version = "2.6.8".freeze
  s.summary = "Precompile HAML-JS templates with or without Rails 3.1 assets pipeline".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sprockets>.freeze, [">= 2.0.0"])
      s.add_runtime_dependency(%q<execjs>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<rails>.freeze, [">= 3.1.1"])
    else
      s.add_dependency(%q<sprockets>.freeze, [">= 2.0.0"])
      s.add_dependency(%q<execjs>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<rails>.freeze, [">= 3.1.1"])
    end
  else
    s.add_dependency(%q<sprockets>.freeze, [">= 2.0.0"])
    s.add_dependency(%q<execjs>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<rails>.freeze, [">= 3.1.1"])
  end
end
