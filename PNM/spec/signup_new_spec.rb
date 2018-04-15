require 'rspec'
require 'test/unit'
require 'test/unit/assertions'

include WaitHelper
include GenericHelper
include LoginHelper
include SignupHelper
#include BillsDashboard

describe 'Signup : ' do

  #signup
  #navigate_to_login
  #login
  #VerifyLoginPage
  #verifydashboard
    element = @driver.find_element(:id,"input-email_or_phone")
    element if element.displayed?


end