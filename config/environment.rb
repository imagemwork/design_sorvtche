RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|

  config.time_zone = 'UTC'
  config.i18n.default_locale = "pt-BR"
  config.gem "rack", :version => "1.0.1"
  
end