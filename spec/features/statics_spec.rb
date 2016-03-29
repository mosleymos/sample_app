require 'rails_helper'

describe "Statics", type: :feature do
  it 'should show us home page of site' do
    visit '/'
    expect(page).to have_content('Hello World')
  end
  it 'should show us home page of site' do
    visit '/about'
    expect(page).to have_content('About')
  end

end
