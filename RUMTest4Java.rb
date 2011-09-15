#!/usr/bin/env ruby
#
# Sample RSpec test case using the Sauce gem
#
require "rubygems"
gem "sauce", ">=0.12.2"

require "sauce"
# This should go in your spec_helper.rb file if you have one
Sauce.config do |config|
  # use this if the test app is hosted in EC2
  config.browser_url = "http://ec2-50-16-120-67.compute-1.amazonaws.com:8080/"
  config.browsers = [
    ["Windows 2003", "firefox", "2.0."],
    ["Windows 2003", "firefox", "3.0."],
    ["Windows 2003", "firefox", "3.5."],
    ["Windows 2003", "firefox", "3.6."],
    ["Windows 2003", "googlechrome", ""],
    ["Windows 2003", "iexplore", "6."],
    ["Windows 2003", "iexplore", "7."],
    ["Windows 2003", "iexplore", "8."],
    ["Windows 2003", "safari", "3."],
    ["Windows 2003", "safari", "4."],
    ["Windows 2008", "firefox", "4."],
    ["Windows 2008", "iexplore", "9."],
    ["Windows 2003", "opera", "9."],
    ["Windows 2003", "opera", "10."],
    ["Windows 2003", "opera", "11."],
    ["Linux", "firefox", "3.0"],
    ["Linux", "firefox", "3.6"]
  ]
  
end

# If this goes in spec/selenium/foo_spec.rb, you can omit the :type parameter
describe "The RUM testing website", :type => :selenium do
   
  it "should have a rum test application page" do
    page.open "/RUMTestJavaApp/"
    page.is_text_present("Welcome to RUM taste web").should be_true
    #page.click "link=Click here to see all the rum images!!!"
    #page.wait_for_element("//img[@id='myImage']", :timeout_in_seconds=>5)
    #page.is_visible("//img[@id='myImage']").should be_true
    
    page.click "link=RUM Test Page 1"
    page.wait_for_page_to_load 40000
    page.is_text_present("Light Rum").should be_true
    
    page.click "link=RUM Test Page 2"
    
    page.is_text_present("Gold Rum").should be_true
    
    page.click "link=RUM Test Page 3"
    
    page.is_text_present("Spiced Rum").should be_true
    
    page.click "link=RUM Test Page 4"
    
    page.is_text_present("Dark Rum").should be_true
    
    page.click "link=RUM Test Page 5"
    
    page.is_text_present("Flavored").should be_true
    
    page.click "link=RUM Test Page 6"
    
    page.is_text_present("Overproof Rum").should be_true
    
    page.click "link=RUM Test Page 7"
    
    page.is_text_present("Premium Rum").should be_true
    
    page.click "link=RUM Test Page 8"
    
    page.is_text_present("House Made Rum").should be_true
    
    page.click "link=RUM Test Page 9"
    
    page.is_text_present("Custom Made Rum").should be_true
    
    page.click "link=Click here to see all the rum images!!!"
    page.wait_for_element("//img[@id='myImage']", :timeout_in_seconds=>5)
    page.is_visible("//img[@id='myImage']").should be_true
    
    page.click "link=RUM Test Page 10"
    
    page.is_text_present("No RUM for this page").should be_true
    
  end
end  



