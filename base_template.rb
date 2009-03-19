run "echo TODO > README"

generate :nifty_layout

gem 'rspec', :lib => false
gem 'rspec-rails', :lib => false
gem 'mislav-will_paginate', :lib => 'will_paginate', :source => 'http://gems.github.com'
gem 'thoughtbot-shoulda', :lib => false, :source => 'http://gems.github.com'
gem "thoughtbot-factory_girl", :lib => "factory_girl", :source => "http://gems.github.com"

rake "gems:install", :sudo => true

generate :rspec # if yes?("Do you want to use RSpec?")

git :init

file ".gitignore", <<-END
.DS_Store
log/*.log
tmp/**/*
config/database.yml
db/*.sqlite3
END

file "spec/factories.rb", <<-END
# Factory.define :user do |u|
#  u.first_name 'Joe'
#  u.last_name  'Blow'
# end
END

run "touch tmp/.gitignore log/.gitignore vendor/.gitignore"
run "cp config/database.yml config/example_database.yml"

git :add => ".", :commit => "-m 'initial commit'"
