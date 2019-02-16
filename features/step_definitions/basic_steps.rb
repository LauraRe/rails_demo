Given("the following articles exists") do |table|
    table.hashes.each do |article|
      Article.create!(article)
    end
end

Given("I visit the {string} page") do |page_name|
    page = page_name == 'landing' ? root_path : page_name
    visit page
end
  
When("I click {string} link") do |click_target|
    click_link click_target
end

When("I fill in {string} with {string}") do |field, string|
    fill_in field, with: string
end

When("I click {string} button") do |button_name|
    click_button button_name
end
  