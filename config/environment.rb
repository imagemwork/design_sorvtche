RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|

  config.time_zone = 'UTC'
  config.i18n.default_locale = "pt-BR"
  config.gem "rack", :version => "1.0.1"
  config.load_paths += %W( #{RAILS_ROOT}/app/sweepers )
  
end

ActionMailer::Base.default_content_type = "text/html"
ActionMailer::Base.smtp_settings = {
  :enable_starttls_auto => true,
   :address => "smtp.gmail.com",
   :port => 587,
   :authentication => :plain,
   :user_name => "edipofederle@gmail.com", #Você pode usar o Google Apps!
   :password => 'edipo@federle'
}
