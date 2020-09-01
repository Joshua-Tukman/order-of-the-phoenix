require 'rails_helper'

RSpec.describe PotterService do
  it "can make a request" do 

    house = 'Gryffindor'
    service = PotterService.new

    expect(service).to be_a(PotterService)
    
    response = service.phoenix_members(house)

    expect(response.count).to eq(21)
  end 
end 