module BillsDashboard

  def verifydashboard

    wait_true(15) {@driver.find_element(:id,"btn-take-tour")}
    expect(@driver.find_element(:css,"div.content h1").text).to eq "Pay all your bills with cash at nearly 17,000 convenient locations. Most payments post next work day."
    expect(@driver.find_element(:id,"btn-add-bill").displayed?).to be_truthy
    expect(@driver.find_element(:id,"btn-take-tour").displayed?).to be_truthy
    expect(@driver.find_element(:id,"off-canvas-menu-settings").displayed?).to be_truthy

  end

end