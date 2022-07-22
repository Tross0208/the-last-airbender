require 'rails_helper'

RSpec.describe 'Welcome Index', type: :feature do
  it 'links to search page' do
    visit '/'
    click_button "Search For Members"

    expect(current_path).to eq("/search")
  end
end
