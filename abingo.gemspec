# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "abingo"
  s.version = "1.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Patrick McKenzie"]
  s.date = "2012-03-15"
  s.description = "A/Bingo is a Ruby on Rails A/B testing framework written as a\n    plugin. It is an extraction from Bingo Card Creator, where it is used in\n    production. A/Bingo should work for most recent versions of both Rails 2.3 and\n    3.0."
  s.email = "patrick@bingocardcreator.com"
  s.files = ["generators/abingo_migration", "generators/abingo_migration/abingo_migration_generator.rb", "generators/abingo_migration/templates", "generators/abingo_migration/templates/abingo_migration.rb", "lib/abingo", "lib/abingo/experiment.rb", "lib/abingo/views", "lib/abingo/views/dashboard", "lib/abingo/views/dashboard/index.erb", "lib/abingo/views/dashboard/_experiment.erb", "lib/abingo/rails", "lib/abingo/rails/controller", "lib/abingo/rails/controller/dashboard.rb", "lib/abingo/controller", "lib/abingo/controller/dashboard.rb", "lib/abingo/alternative.rb", "lib/abingo/conversion_rate.rb", "lib/abingo/statistics.rb", "lib/abingo_view_helper.rb", "lib/abingo_sugar.rb", "lib/abingo.rb", "init.rb", "MIT-LICENSE", "Rakefile", "README", "install.rb", "uninstall.rb"]
  s.homepage = "http://www.bingocardcreator.com/abingo"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.11"
  s.summary = "A/Bingo: Rails AB Testing"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
