# -*- encoding : utf-8 -*-
require 'capybara/poltergeist'
Capybara.asset_host = 'http://localhost:3000'
Capybara.javascript_driver = :poltergeist
#Capybara.javascript_driver = :selenium
