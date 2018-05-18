module LoginHelper

  def navigate_to_login
      login_link = wait_true(15) {
        element = @driver.find_element(:css,"div.login-footer a")
        element if element.displayed?
      }
      login_link.click
  end


  def login(pswd="Qwerty123$")

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
    pswd_field_element.send_keys(pswd)

    login_btn_element = wait_true(15) {
      element = @driver.find_element(:id,"button-login")
      element if element.displayed?
    }
    login_btn_element.click

  end

end
