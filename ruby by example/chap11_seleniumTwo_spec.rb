require 'selenium-webdriver'
require 'rspec'

describe "Book flight" do

  before(:all) do
    @browser = $browser = Selenium::WebDriver::for(:chrome)
    @browser.get("http://travel.agileway.net")
  end

  after(:all) do
    @browser.quit
  end

  it "Book flight with payment" do
    @browser.find_element(:id, "username").send_keys("agileway")
    @browser.find_element(:id, "password").send_keys("testwise")
    @browser.find_element(:xpath, "//input[@value='Sign in']").click
    #check if signed in
    expect(@browser.page_source).to include ("Signed in!")

    @browser.find_elements(:name => "tripType").each { |elem| elem.click && break if
    elem.attribute("value")== "oneway" && elem.attribute("type" == "radio")
    }

    Selenium::WebDriver::Support::Select.new(@browser.find_element(:name, "toPort")).
        select_by(:text, "Sydney")

    Selenium::WebDriver::Support::Select.new(@browser.find_element(:id, "departDay")).
        select_by(:text, "04")

    Selenium::WebDriver::Support::Select.new(@browser.find_element(:id, "departMonth")).
        select_by(:text, "March 2012")

    @browser.find_element(:xpath,"//input[@value='Continue']").click
    @browser.find_element(:name, "passengerFirstName").send_keys("Wise")
    @browser.find_element(:name, "passengerLastName").send_keys("Tester")
    @browser.find_element(:xpath,"//input[@value='Next']").click
    @browser.find_element(:xpath, "//input[@name='card_type' and @value='visa']").click

    @browser.find_element(:name, "card_number").send_keys("4000000000000000")
      select_elem = @browser.find_element(:name, "expiry_year");
        options = select_elem.find_elements(:tag_name, "option");
        options.each {|opt| opt.click if opt.text == "2013"}

    @browser.find_element(:xpath,"//input[@value='Pay now']").click

    sleep 10 #check receipt info

    expect(@browser.page_source).to include("2012-03-04 <b>New York</b> to <b>Sydney</b>")
  end
end