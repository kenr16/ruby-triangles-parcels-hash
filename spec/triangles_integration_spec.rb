require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('The triangles path', {:type => :feature}) do
  it('Takes a trio if inputted sides and determines what type of triangle it is.') do
    visit('/')
    fill_in('first_side', :with => 2)
    fill_in('second_side', :with => 2)
    fill_in('third_side', :with => 8)
    click_button('Submit')
    expect(page).to have_content("It is not a triangle")
  end

  it('Takes a trio if inputted sides and determines what type of triangle it is.') do
    visit('/')
    fill_in('first_side', :with => 5)
    fill_in('second_side', :with => 5)
    fill_in('third_side', :with => 3)
    click_button('Submit')
    expect(page).to have_content("It is isosceles!")
  end

end
