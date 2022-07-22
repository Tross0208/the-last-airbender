require 'rails_helper'

RSpec.describe 'Search Index', type: :feature do
  it 'displays character count by nation' do
    visit '/'
    select "Fire Nation"#, :from => "nation"
    click_button "Search For Members"
    save_and_open_page

    expect(current_path).to eq("/search")
    expect(page).to have_content("Fire Nation")
  end
end
