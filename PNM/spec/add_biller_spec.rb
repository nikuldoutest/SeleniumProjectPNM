require 'spec_helper'

#include SignupHelper
include WaitHelper
include GenericHelper
include LoginHelper
include AddBiller
include BillsDashboard
include LogoutHelper

randumNumberGenerator = random_num

describe "Add Biller : " do

  it "should add biller name" do

    navigate_to_login
    login
    verifydashboard
    sleep 1

    addbiller("GEICO")

    sleep 1

    add_account_element = wait_true(15) {
      element = @driver.find_element(:css,"button.btn.block.primary span")
      element if element.displayed?
    }
    add_account_element.click


    enter_account_element = wait_true(15) {
      element = @driver.find_element(:id,"input-customer_identifier")
      element if element.displayed?
    }
    enter_account_element.send_keys(randumNumberGenerator)


    re_enter_account_element = wait_true(15) {
      element = @driver.find_element(:id,"input-confirm_customer_identifier")
      element if element.displayed?
    }
    re_enter_account_element.send_keys(randumNumberGenerator)

=begin
    first_name_account_element = wait_true(15) {
      element = @driver.clear_then_enter(:id,"input-customer_first_name")
      element if element.displayed?
    }
    first_name_account_element.send_keys("Nikulp")


    last_name_account_element = wait_true(15) {
      element = @driver.find_element(:id,"input-customer_last_name")
      element if element.displayed?
    }
    last_name_account_element.send_keys("Patel")
=end

    click_add_continue_element = wait_true(50) {
      element = @driver.find_element(:css,"button.primary")
      element if element.displayed?
    }
    click_add_continue_element.click


    click_continue_element = wait_true(30) {
      element = @driver.find_element(:css,"div.content.confirm-btn-wrap span")
      element if element.displayed?
    }
    click_continue_element.click

=begin
    select_bill_frequency_element = wait_true(15) {
      element = @driver.find_element(:id,"input-language")
      element if element.displayed?
    }
    select_bill_frequency_element.select(2)


    bill_date_frequency_element = wait_true(15) {
      element = @driver.find_element(:id,"input-bill_day")
      element if element.displayed?
    }
    bill_date_frequency_element.select(10)
=end

    sleep 5

    submit_click_element = wait_true(25) {
      element = @driver.find_element(:css,"button.primary span.inner")
      element if element.displayed?
    }
    submit_click_element.click


    congratulations_element = wait_true(25) {
      element = @driver.find_element(:css,"div.content h2")
      element if element.displayed?
    }
    congratulations_element.text.should eq "Congratulations"

    #sleep 2

  #Click to add another bill
    add_another_bill_element = wait_true(25) {
      element = @driver.find_element(:id,"btn-add-another")
      element if element.displayed?
    }
    add_another_bill_element.click

  #Click to go to home
    goto_home_element = wait_true(25) {
      element = @driver.find_element(:id,"off-canvas-menu-landing")
      element if element.displayed?
    }
    goto_home_element.click

  #Delete biller
    delete_element = wait_true(25) {
      element = @driver.find_element(:css,"div.order-options i.ion-android-more-horizontal")
      element if element.displayed?
    }
    delete_element.click


    alert_delete_element = wait_true(25) {
      element = @driver.find_element(:css,"div.pnm-list-item span.inner.clear.delete")
      element if element.displayed?
    }
    alert_delete_element.click


    comfirm_delete_element = wait_true(15) {
      element = @driver.find_element(:css,"a#alert-button.right")
      element if element.displayed?
    }
    comfirm_delete_element.click

   #sleep 2

    logout

    sleep 2


  end
end
