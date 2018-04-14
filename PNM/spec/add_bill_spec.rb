require 'spec_helper'

describe 'Add Bill' do

  it 'should allow user to add bill and show up on dashboard' do


    find_biller_element = wait_true(15) {
      element = @driver.find_element()
      element if element.displayed?
    }
    email_field_element.click


  end

  it 'should allow user to add multiple bills ' do

  end

  it "should allow user to see pay other bills ad" do

  end


end