require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'
require 'rspec'
require 'faker'
require 'cpf_faker'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time = 30
    config.app_host = "https://hml-cineclick.uol.com.br"
end