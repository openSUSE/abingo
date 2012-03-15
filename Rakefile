require 'rake'
require 'rake/testtask'
require 'rdoc/task'
require 'rubygems/package_task'

desc 'Default: run unit tests.'
task :default => :test

spec = Gem::Specification.new do |s|
  s.name = 'abingo'
  s.version = '1.0.3'
  s.platform = Gem::Platform::RUBY
  s.description = "A/Bingo is a Ruby on Rails A/B testing framework written as a
    plugin. It is an extraction from Bingo Card Creator, where it is used in
    production. A/Bingo should work for most recent versions of both Rails 2.3 and
    3.0."
  s.summary = "A/Bingo: Rails AB Testing"
  exclude_folders = 'spec/rails/{doc,lib,log,nbproject,tmp,vendor,test}'
  exclude_files = FileList['**/*.log'] + FileList[exclude_folders+'/**/*'] + FileList[exclude_folders]
  s.files = FileList['{generators,lib,tasks,spec}/**/*'] + %w(init.rb MIT-LICENSE Rakefile README install.rb uninstall.rb) - exclude_files
  s.require_path = 'lib'
  s.has_rdoc = true
  s.test_files = Dir['spec/*_spec.rb']
  s.author = 'Patrick McKenzie'
  s.email = 'patrick@bingocardcreator.com'
  s.homepage = 'http://www.bingocardcreator.com/abingo'
end

desc 'Test the abingo plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the abingo plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Abingo'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

desc 'Generate a gemspec file.'
task :gemspec do
  File.open("#{spec.name}.gemspec", 'w') do |f|
    f.write spec.to_ruby
  end
end

Gem::PackageTask.new(spec) do |p|
  p.gem_spec = spec
  p.need_tar = RUBY_PLATFORM =~ /mswin/ ? false : true
  p.need_zip = true
end
