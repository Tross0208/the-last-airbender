require 'rails_helper'

RSpec.describe 'Character Poro', type: :feature do
  it 'Creates poro from api request data' do
    char = Character.new({:_id=>"5cf5679a915ecad153ab68fd", :allies=>["Ozai"], :enemies=>["Earth Kingdom"], :name=>"Chan (Fire Nation admiral)", :affiliation=>"Fire Nation Navy", :photoUrl=>"website.com"})

    expect(char.id).to eq("5cf5679a915ecad153ab68fd")
    expect(char.allies).to eq(["Ozai"])
    expect(char.enemies).to eq(["Earth Kingdom"])
    expect(char.name).to eq("Chan (Fire Nation admiral)")
    expect(char.affiliation).to eq("Fire Nation Navy")
    expect(char.photo_url).to eq("website.com")
  end

  it 'Creates poro from incomplete data' do
    char = Character.new({:_id=>"5cf5679a915ecad153ab68fd", :allies=>["Ozai"], :enemies=>["Earth Kingdom"], :name=>"Chan (Fire Nation admiral)", :affiliation=>"Fire Nation Navy"})

    expect(char.id).to eq("5cf5679a915ecad153ab68fd")
    expect(char.allies).to eq(["Ozai"])
    expect(char.enemies).to eq(["Earth Kingdom"])
    expect(char.name).to eq("Chan (Fire Nation admiral)")
    expect(char.affiliation).to eq("Fire Nation Navy")
    expect(char.photo_url).to eq(nil)
  end
end
