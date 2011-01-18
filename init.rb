require File.dirname(__FILE__) + '/lib/abingo'
require File.dirname(__FILE__) + '/generators/abingo_migration/abingo_migration_generator.rb'

ActionController::Base.send :include, AbingoSugar

ActionView::Base.send :include, AbingoViewHelper