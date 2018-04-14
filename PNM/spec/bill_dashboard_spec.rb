
module BillsDashboard

  def verifydashboard

      wait_true(15) {@driver.find_element(:id,"btn-take-tour")}
      expect(@driver.find_element(:css, 'div.content h1').text).to eq "Pay all your bills with cash at nearly 17,000 convenient locations. Most payments post next work day."
      expect(@driver.find_element(:id, 'btn-add-bill').displayed?).to be_truthy
      expect(@driver.find_element(:id, 'btn-take-tour').displayed?).to be_truthy

  end

end

=begin
  def bills

    it 'should land on pre-dashboard on first login' do

      paybills_field_element = wait_true(15) {
        element = expect(@driver.find_element(:css, 'div.content h1').text).to eq "Pay all your bills with cash at nearly 17,000 convenient locations. Most payments post next work day.")
        (element if element.displayed?).to be_truthy
      }
    end

    it 'should show pre-dashboard text and pay-bill button ' do

      paybills_field_element = wait_true(15) {
        element = expect(@driver.find_element(:id,"btn-add-bill"))
        (element if element.displayed?).to be_truthy

      }
      paybills_field_element.click

    end

    it 'should allow user to take tour of app while on pre-dashboard' do

      taketour_field_element = wait_true(15) {
        element = expect(@driver.find_element(:id,"btn-take-tour"))
        (element if element.displayed?).to be_truthy
      }
      taketour_field_element.click

    end

    it "should allow user to traverse between different menu options " do

      billsmenu_field_element = wait_true(15) {
        expect(@driver.find_element(:id,"off-canvas-menu-open-order-list"))
        element if element.displayed?
      }
      billsmenu_field_element.click

      history_field_element = wait_true(15) {
        element = @driver.find_element(:id,"off-canvas-menu-history")
        element if element.displayed?
      }
      history_field_element.click

      location_field_element = wait_true(15) {
        element = @driver.find_element(:id,"off-canvas-menu-locations-list")
        element if element.displayed?
      }
      location_field_element.click

    end

    it "should allow user to select and traverse settings option from dashboard" do

    end
=end
