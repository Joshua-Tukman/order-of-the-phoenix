require 'rails_helper'

RSpec.describe "As a user" do
  describe "when I select Gryffindor from select field" do 
    it "I can see the total number of phoenix members that belong to gryffindor" do 

      visit "/"
      
      select "Gryffindor", from: :house

      click_on "Search For Members"

      expect(current_path).to eq('/search')
      expect(page).to have_content('There are 21 members of the Order of Phoenix in the house of Gryffindor')
      expect(page).to have_css('.member', count: 21)

      within(first('.member')) do
        within('.name') do
          expect(page).to have_content('Name: Sirius Black')
        end 
        within('.role') do
          expect(page).to have_content('Role of the member: This member has no role')
        end 
        within('.house') do
          expect(page).to have_content('Member belongs to the following house: Gryffindor')
        end 
        within('.patronus') do
          expect(page).to have_content('Patronus: This member has no patronus')
        end
      end 
    end 
  end 
end 
