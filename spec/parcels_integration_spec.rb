require('capybara/rspec')
require('./app2')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('The parcels path', {:type => :feature}) do
  it('Takes the length, width and volume of a parcel.') do
    visit('/')
    fill_in('length', :with => 2)
    fill_in('width', :with => 2)
    fill_in('height', :with => 8)
    fill_in('distance', :with => 200)
    click_button('Submit')
    expect(page).to have_content(32)
    expect(page).to have_content(64)
  end
end
