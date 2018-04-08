require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.get "https://www.google.com"

element = driver.find_element :id=>"gb_70"
element.send_keys
element.submit

wait = Selenium::WebDriver::Wait.new(:timeout => 10)
wait.until (driver.title.downcase.start_with? "Cheese!")

puts "Page title is #{driver.title}"
driver.quit