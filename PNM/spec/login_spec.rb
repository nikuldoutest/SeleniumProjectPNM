require 'spec_helper'
require 'rubygems'
require 'selenium-webdriver'
include LoginHelper
include GenericHelper






describe 'Login:' do

  it 'should allow user to login with correct username and password' do

    wait_true(15) {@driver.find_element(:id,'user_email').displayed? }
    @driver.find_element(:id,'user_email').send_keys('nikuldoutest@gmail.com')


    wait_true(15) {@driver.find_element(:name,'user[password]').displayed? }
    @driver.find_element(:name,'user[password]').send_keys("1qaz@WSX")

    wait_true(15) {@driver.find_element(:css,'input.button.primary').displayed? }
    @driver.find_element(:css,'input.button.primary').click

    sleep 10

  end

end
