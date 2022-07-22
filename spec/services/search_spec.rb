require 'rails_helper'

RSpec.describe 'Search Service', type: :feature do
  it 'finds characters by nation' do
    response = SearchService.get_people_by_nation("Fire Nation")

    expect(response.first).to be_a(Hash)
    expect(response.first).to have_key(:name)
    expect(response.first).to have_key(:_id)
    expect(response.first).to have_key(:allies)
    expect(response.first).to have_key(:enemies)
    expect(response.first).to have_key(:affiliation)
    #expect(response.first[:affiliation]).to eq("Fire Nation") #Fire nation navy?
    expect(response.count).to eq(97)
  end
end
