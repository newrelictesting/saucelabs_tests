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
  config.browser_url = "http://ec2-50-16-120-67.compute-1.amazonaws.com:8000/"
  # use this if you run the test app on localhost (with alias nrrumtest.com) using Sauce Connect Proxy Server
  #config.browser_url = "http://nrrumtest.com:8000/"
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
    page.open "/rums/"
    page.is_text_present("Welcome to Rum Taste Ruby Web").should be_true
    
    page.click "link=Light Rum"
    page.wait_for_page_to_load 40000
    page.is_text_present("Taste Light Rum").should be_true
    
    page.click "link=Home Page"
    page.wait_for_page_to_load 40000
    page.click "link=Gold Rum"
    
    page.is_text_present("Taste Gold Rum").should be_true
    
    page.click "link=Home Page"
    page.wait_for_page_to_load 40000
    page.click "link=Spiced Rum"
    
    page.is_text_present("Taste Spiced Rum").should be_true
    
    page.click "link=Home Page"
    page.wait_for_page_to_load 40000
    page.click "link=Dark Rum"
    
    page.is_text_present("Taste Dark Rum").should be_true
    
    page.click "link=Home Page"
    page.wait_for_page_to_load 40000
    page.click "link=Flavored Rum"
    
    page.is_text_present("Taste Flavored Rum").should be_true
    
    page.click "link=Home Page"
    page.wait_for_page_to_load 40000
    page.click "link=Overproof Rum"
    
    page.is_text_present("Taste Overproof Rum").should be_true
    
    page.click "link=Home Page"
    page.wait_for_page_to_load 40000
    page.click "link=Premium Rum"
    
    page.is_text_present("Taste Premium Rum").should be_true
    
    page.click "link=Home Page"
    page.wait_for_page_to_load 40000
    page.click "link=House Made Rum"
    
    page.is_text_present("Taste House Made Rum").should be_true
    
    page.click "link=Home Page"
    page.wait_for_page_to_load 40000
    page.click "link=Custom Made Rum"
    
    page.is_text_present("Taste Custom Made Rum").should be_true
    
    page.click "link=Click here to see the rum image!!!"
    page.wait_for_element("//img[@id='myImage']", :timeout_in_seconds=>5)
    page.is_visible("//img[@id='myImage']").should be_true
    
    page.click "link=Home Page"
    page.wait_for_page_to_load 40000
    page.click "link=No RUM"
    
    page.is_text_present("You got no RUM").should be_true
    
  end
end  



