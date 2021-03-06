module SignupHelper

  #Sign up in to the page

  def signup

        #step 1: Enter email or phone num

        email_field_element = wait_true(15) {
          element = @driver.find_element(:id,"input-email_or_phone")
          element if element.displayed?
        }
        email_field_element.send_keys("nikuldoutest@gmail.com")

        #step 2 : Enter password

        pswd_field_element = wait_true(15) {
          element = @driver.find_element(:id,"input-password")
          element if element.displayed?
        }
        pswd_field_element.send_keys("Nikul6695$")

        #step 3: Enter zip code

        zip_code_field_element = wait_true(15) {
          element = @driver.find_element(:id,'input-postalcode')
          element if element.displayed?
        }
        zip_code_field_element.send_keys("95035")

        #step 4: Click on Sign up/Register button

        signup_btn_element = wait_true(15) {
          element = @driver.find_element(:id,"button-sign-up")
          element if element.displayed?
        }
        signup_btn_element.click



      end

  end

=begin
Verifying the error on the sign up page

          it "Should throw error on entering wrong email format" do
            email_field_element = wait_true(10) {
              element = @driver.find_element(:id,"input-email_or_phone")
              element if element.displayed?
            }
            email_field_element.send_keys("nikpatel.gmail.com")
            pswd_field_element = wait_true(10) {
              element = @driver.find_element(:id,"input-password")
              element if element.displayed?
            }
            pswd_field_element.send_keys("1qaz@WSX")
            email_err_msg = wait_true(15){
              element = @driver.find_element(:id,"error-email_or_phone")
              element if element.displayed?
            }

            #assert ( email_err_msg.text == "Email or phone number is not valid" )

          end



          it "should throw error on entering wrong zip code" do
            zipcode_field_element = wait_true(15){
              element = @driver.find_element(:id,'input-postalcode')
              element if element.displayed?
            }
            zipcode_field_element.send_keys("9503")
            pswd_field_element = wait_true(10) {
              element = @driver.find_element(:id,"input-password")
              element if element.displayed?
            }
            pswd_field_element.click
            zip_code_error_msg = wait_true(15){
              element = @driver.find_element(:id,"error-postalcode")
              element if element.displayed?
            }

            # assert ( zip_code_error_msg.text == "Zip code is not valid" )
          end
=end
