require 'selenium-webdriver'

browser = Selenium::WebDriver.for(:firefox)
browser.get("http://travel.agileway.net")

browser.find_element(:id, "username").send_keys("agileway")
browser.find_element(:id, "password").send_keys("testwise")
submit_button = browser.find_element(:xpath,".//*[@id='login-box']/p[4]/input")
                    submit_button.click

browser.find_elements(:name => "tripType").each {|elem| elem.click && break if elem.attribute("value") == "oneway"
  elem.attribute("type") == "radio"}

#one way of using select with WebDriver - slow
select_element = browser.find_element(:name, "fromPort")
options = select_element.find_elements(:tag_name, "option")
options.each { |opt| opt.click if opt.text == "New York" }

Selenium::WebDriver::Support::Select.new(browser.find_element(:name, "toPort")).select_by(:text, "Sydney")
Selenium::WebDriver::Support::Select.new(browser.find_element(:id, "departDay")).select_by(:text, "04")
Selenium::WebDriver::Support::Select.new(browser.find_element(:id, "departMonth")).select_by(:text, "March 2012")
browser.find_element(:xpath, "//input[@value='Continue']").click

browser.find_element(:name, "passengerFirstName").send_keys("Wise")
browser.find_element(:name, "passengerLastName").send_keys("Tester")
browser.find_element(:xpath, "//input[@value='Next']").click

browser.find_elements(:name => "card_type").each { |elem| elem.click && break if elem.attribute("value") == "visa" && elem.attribute("type") == "radio"}

browser.find_element(:name, "card_number").send_keys("40000000000000000")
Selenium::WebDriver::Support::Select.new(browser.find_element(:name, "expiry_year")).select_by(:text, "2013")
browser.find_element(:xpath, "//input[@value='Pay now']").click

browser.quit




