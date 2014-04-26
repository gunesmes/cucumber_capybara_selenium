Given(/^I am on home page of Amazon$/) do
	visit "/"
end

When (/^I click "(.*?)" button$/) do |button|
	click_link(button)
end

When(/^I sign in with "(.*?)" and "(.*?)"$/) do |username, password|
	fill_in "ap_email", :with => username
	fill_in "ap_password", :with => password
	
	click_on("signInSubmit-input")
end

Then(/^Page should have content "(.*?)"$/) do |text|
	page.should have_content text
end
