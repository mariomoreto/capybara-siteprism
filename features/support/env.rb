require 'allure-cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

Allure.configure do |c|
  c.results_directory = 'report/allure-results'
  c.clean_results_directory = true
  c.link_tms_pattern = 'https://example.org/tms/{}'
  c.link_issue_pattern = 'https://example.org/issue/{}'
end

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'http://enjoeat-sp5.herokuapp.com'
end

