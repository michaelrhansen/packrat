require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "packrat"
    gem.summary = "Packrat is a gem for merging all css rules to inline for html emails and files."
    gem.description = "Packrat is a gem for merging all css rules to inline for html emails and files."
    gem.email = "indyjones805@gmail.com"
    gem.homepage = "http://github.com/mikehansen/packrat"
    gem.authors = ["Mike Hansen"]
    gem.add_development_dependency "thoughtbot-shoulda", ">= 0"
    gem.add_dependency('hpricot', '>= 0.6')
    gem.add_dependency('css_parser', '>= 0.9.1')
    # gem.add_dependency('htmlentities', '>= 4.0.0')
    # gem.add_dependency('text-reform', '>= 0.2.0')
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/test_*.rb'
    test.verbose = true
  end
rescue LoadError
  task :rcov do
    abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end

task :test => :check_dependencies

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "packrat #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
