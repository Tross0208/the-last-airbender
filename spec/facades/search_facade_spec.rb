require 'rails_helper'

RSpec.describe 'Search Facade', type: :feature do
  it 'gets count of characters by nation' do
    count = SearchFacade.count_by_nation("Fire Nation")

    expect(count).to eq(97)
  end

  it 'gets 25 characters by nation' do
    characters = SearchFacade.list_by_nation("Fire Nation")
    expect(characters.count).to eq(25)
  end
end
