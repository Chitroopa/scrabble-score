require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('scrabble score',{:type => :feature}) do
  it('proccess the user entry and return its scrabble score') do
    visit('/')
    fill_in('score', :with => 'how are you')
    click_button('Check Score')
    expect(page).to have_content()
  end
end
