require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe( 'words', {:type => :feature}) do
  it('processes user entry and holds all words and contact info') do
    visit('/')
    fill_in('word', :with => 'Emily')
    fill_in('define', :with => 'A name')
    click_button('submit')
    expect(page).to have_content ('Emily')
  end
end
