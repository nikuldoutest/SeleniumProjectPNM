
module LoginHelper

  def navigate_to_login
    login_link = wait_true(15) {
      element =@driver.find_element(:link,".login-footer > a:nth-child(1)")
      element if element.displayed?
        }
        login_link.click
  end


  def login


    #step 1: Enter email or phone num

    email_field_element = wait_true(15) {
      element = @driver.find_element(:id,"input-email")
      element if element.displayed?
    }
    email_field_element.send_keys("nikuldoutest@gmail.com")

    #step 2 : Enter password

        pswd_field_element = wait_true(15) {
          element = @driver.find_element(:id,"input-password")
          element if element.displayed?
        }
        pswd_field_element.send_keys("Nikul6695$")

        login_btn_element = wait_true(15) {
          element = @driver.find_element(:id,"button-login")
          element if element.displayed?
        }
        login_btn_element.click
  end

end
