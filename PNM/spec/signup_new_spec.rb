require 'spec_helper'

include SignupHelper
include WaitHelper
include GenericHelper
include LoginHelper
include BillsDashboard
include LogoutHelper
include AddBiller



describe "Sign up :" do

  it 'should Allow user to sign up' do

    signup

    verifydashboard

    addbiller("GEICO")

    logout


  end

end