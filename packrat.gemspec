# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{packrat}
  s.version = "0.1.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mike Hansen"]
  s.date = %q{2010-10-21}
  s.description = %q{Packrat is a gem for merging all css rules to inline for html emails and files.}
  s.email = %q{indyjones805@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "init.rb",
     "lib/packrat.rb",
     "lib/packrat/view_helpers.rb",
     "lib/premailer/html_to_plain_text.rb",
     "lib/premailer/premailer.rb",
     "packrat.gemspec",
     "test/helper.rb",
     "test/test_packrat.rb"
  ]
  s.homepage = %q{http://github.com/mikehansen/packrat}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Packrat is a gem for merging all css rules to inline for html emails and files.}
  s.test_files = [
    "test/helper.rb",
     "test/test_packrat.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_runtime_dependency(%q<hpricot>, [">= 0.6"])
      s.add_runtime_dependency(%q<css_parser>, [">= 0.9.1"])
    else
      s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_dependency(%q<hpricot>, [">= 0.6"])
      s.add_dependency(%q<css_parser>, [">= 0.9.1"])
    end
  else
    s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    s.add_dependency(%q<hpricot>, [">= 0.6"])
    s.add_dependency(%q<css_parser>, [">= 0.9.1"])
  end
end
