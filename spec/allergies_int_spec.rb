require ('capybara/rspec')
require ('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Checks an index number against an allergy index to determine which allergies that person has', {:type => :feature}) do
  it("Check the number against the table") do
    visit('/')
    fill_in('allergy' , :with => "129")
    click_button('Check It!')
    expect(page).to have_content("cats, eggs")
  end
end
