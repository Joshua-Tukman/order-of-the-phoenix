class SearchController < ApplicationController

  def index
    house = params['house']
    @members = PotterService.new.phoenix_members(house)
  end 
end 