require 'rubygems'
require 'rails'

if Rails::VERSION::MAJOR.to_i >= 3
  require 'rails/all'
  require 'test/unit'

  require 'active_support'
  require 'active_support/railtie'
  require 'active_support/core_ext'
  require 'active_support/test_case'

  require 'action_controller'
  require 'action_controller/caching'
  require 'active_record'
  require 'active_record/base'
  
  require 'rails'
  require 'rails/application'

  require 'rails/railtie'

  require ::File.expand_path('../../../../../config/environment',  __FILE__)
  Rails3test::Application.initialize! 
else
  #Rails 2 testing
  require 'active_support'
  require 'active_support/test_case'
end

