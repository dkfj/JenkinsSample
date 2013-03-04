require 'spec_helper'
require 'selenium-webdriver'

describe "Articles" do
  describe "GET /articles" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get articles_path
      response.status.should be(200)
      driver = Selenium::WebDriver.for :remote, :url => "http://10.0.0.169:4444/wd/hub", :desired_capabilities => :firefox
      driver.get "http://www.yahoo.co.jp"

      wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
      begin
        element = wait.until { driver.find_element(:id => "some-dynamic-element") }
      ensure
        driver.quit
      end

    end
  end
end
