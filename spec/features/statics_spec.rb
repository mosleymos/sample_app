require 'rails_helper'

describe "Statics", type: :feature do
  it 'should show us home page of site' do
    visit '/'
    expect(page).to have_content('CodeYou')
    expect(page).to have_content('Sign in')
  end
  it 'should show us home page of site' do
    visit '/about'
    expect(page).to have_content('About')
    expect(page).to have_content('Mosleymos')
    expect(page).to have_link('https://github.com/mosleymos/simple_app')
  end

end
