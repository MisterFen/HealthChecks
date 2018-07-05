#encoding: UTF-8


Given(/^I visit the Ieso health page$/) do
  visit_main_page
end

Then(/^The All Systems Operational banner displays$/) do
  banner = find(:xpath, '/html/body/div[2]/div[2]/div[1]/span[1]').text
  banner.equal?("All Systems Operational")
end

Given(/^I visit the homepage for "([^"]*)"$/) do |page|
  case page
  when "Qwertee"
    visit_qwertee_main_page
  when "9gag"
    visit_9gag_main_page
  else
    visit_main_page
  end
end

Then (/^The Qwertee title displays correctly$/) do
  title = find('h1').text
  title.equal?("Qwertee")
end

