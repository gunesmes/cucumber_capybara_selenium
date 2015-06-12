require 'rubygems'
require 'capybara'
require 'capybara-webkit'
require 'capybara/dsl'
require 'capybara/rspec'
require 'capybara/poltergeist'

Capybara.run_server = false
Capybara.app_host = 'http://www.amazon.com'
Capybara.javascript_driver = :chrome
Capybara.default_selector = :css
Capybara.default_wait_time = 2 #default wait time for ajax
Capybara.ignore_hidden_elements = false #ignore hidden elements when testing, make helpful when you hide or show elements using javascript


module Helpers
  def without_resynchronize
    page.driver.options[:resynchronize] = false
    yield
    page.driver.options[:resynchronize] = true
  end
end

Capybara.register_driver :poltergeist do |app|
   options = {
      # you can set option here
      # :js_errors => false ,
      # :timeout => 120,
      # :debug => true,
      # :inspector => true,
      # :window_size => [1280, 1024],
      # :logger => false,
      # :inspector => false,
      # :visible => false,
   }
   Capybara::Poltergeist::Driver.new(app, options)
end

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

World(Capybara::DSL, Helpers)