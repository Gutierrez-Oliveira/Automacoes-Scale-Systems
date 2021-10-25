require "allure-cucumber" 
require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "site_prism"
require "pry"
require "rspec"
require "faker"
require "cpf_faker"

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time = 30
    config.app_host = "https://adv2-dev.scale.com.br"
end

AllureCucumber.configure do |config|
    config.results_directory = "/logs"
    config.clean_results_directory = true
    
end