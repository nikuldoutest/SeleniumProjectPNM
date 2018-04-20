module LogoutHelper

  def logout

    settings_element = wait_true(15) {
      element = @driver.find_element(:css,"a#off-canvas-menu-settings")
      element if element.displayed?
    }
    settings_element.click

    logout_link_element = wait_true(15) {
      element = @driver.find_element(:id,"signout-button")
      element if element.displayed?
    }
    logout_link_element.click

    logout_yes_element = wait_true(15) {
      element = @driver.find_element(:css,"a#alert-button.left")
      element if element.displayed?
    }
    logout_yes_element.click

  end
end