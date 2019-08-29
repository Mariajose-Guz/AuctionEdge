Given("I am on the home page") do
  visit 'https://www.edgepipeline.com/' 
end

When("I fill the fields") do
  find('a', :text=>"Sign In").click 
  fill_in 'username', with: 'intellek'
  fill_in 'password', with: '354035as'
  find(:css, "[name='button_action']").click
end

Then("I'm in") do
  page.has_content? ('In-Lane Auctions')
end