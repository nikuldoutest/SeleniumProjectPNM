require 'rspec'
require 'selenium-webdriver'
include WaitHelper


describe 'Signup: ' do
=begin
  it 'Should user allow to signup' do

    #Enter Email ID
    wait_true(15){@driver.find_element(:id,"input-email_or_phone").displayed?}
    @driver.find_element(:id,"input-email_or_phone").send_keys("nikuldou++test@gmail.com")

    #Enter Password
    wait_true(15){@driver.find_element(:id,"input-password").displayed?}
    @driver.find_element(:id,"input-password").send_keys("Nik6695$")

    #Enter Postal Code
    wait_true(15){@driver.find_element(:id,"input-postalcode").displayed?}
    @driver.find_element(:id,"input-postalcode").send_keys("95035")

    #Enter Postal Code
    #wait_true(15){@driver.find_element(:id,"input-button-sign-up").displayed?}
    @driver.find_element(:id,"button-sign-up").click

    sleep 5
  end
=end

  #Email id validation
  #
  it "should show error on entering wrong email format" do

    wait_true(15){@driver.find_element(:id,"input-email_or_phone").displayed?}
    @driver.find_element(:id,"input-email_or_phone").send_keys("nikuldou$$445@$++test@gmailcom")
    @driver.find_element(:id,"button-sign-up").click

    wait_true(15){@driver.find_element(:id,"error-email_or_phone").displayed?}
    @driver.find_element(:id,"error-email_or_phone").text.should eq"Email or phone number is not valid."

    sleep 2

  end

  #Password validation

  it "should show error on entering wrong zip code" do

    wait_true(15){@driver.find_element(:id,"input-password").displayed?}
    @driver.find_element(:id,"input-password").send_keys("Nik$")
    @driver.find_element(:id,"button-sign-up").click

    wait_true(15){@driver.find_element(:id,"error-password").displayed?}
    @driver.find_element(:id,"error-password").text.should eq"Password must be at least 8 characters long with at least one letter AND a number or symbol."

    sleep 2

  end

  #Postal code validation

  it "should show error on entering wrong zip code" do

    wait_true(15){@driver.find_element(:id,"input-postalcode").displayed?}
    @driver.find_element(:id,"input-postalcode").send_keys("T3J 305")
    @driver.find_element(:id,"button-sign-up").click

    wait_true(15){@driver.find_element(:id,"error-postalcode").displayed?}
    @driver.find_element(:id,"error-postalcode").text.should eq"Zip code is not valid"

    sleep 2

  end


end