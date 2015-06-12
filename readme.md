## Installation

Before execution you need to install Ruby, Selenium, and Chromedriver

Basic test base setup with cucumber, capybara, selenium, capybara-webkit, headless and rspec.

First thing to do is installing ruby. You can do this by:

    rvm install ruby-1.9.3

Clone the project, cd to project folder and run to install required gems:

	bundle install

For more help about installation look at: https://github.com/isa/test-base-xruby/blob/master/readme.md

## Execution

To run the test, go to folder by Terminal and run:

	cucumber test/features/

For headless testing, you need to change the default_driver to "webkit" instead of "selenium" from test/features/support/env.rb

	#Capybara.default_driver = :selenium
	Capybara.default_driver = :poltergeist
