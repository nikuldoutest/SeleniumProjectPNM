module AddBiller

  def addbiller(billerName)

    add_bill_element = wait_true(15) {
      element = @driver.find_element(:id,"btn-add-bill")
      element if element.displayed?
    }
    add_bill_element.click

    wait_true(15){ @driver.find_element(:css,"div.list-item-title").displayed? }
      @driver.find_elements(:css,"div.list-item-title").each do |listItem|

        if listItem.text == billerName
           listItem.click
           break
        end

      end

  end
end




