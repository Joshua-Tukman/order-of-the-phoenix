require 'rails_helper'

RSpec.describe Member do
  it "can create a member with correct attributes" do 

    info = {name: 'josh',
            role: 'student',
            house: 'Gryffindor',
            patronus: 'mom'}
            
    member = Member.new(info)
    
    expect(member).to be_a(Member)
    expect(member.name).to eq('josh')
    expect(member.role).to eq('student')
    expect(member.house).to eq('Gryffindor')
    expect(member.patronus).to eq('mom')
  end 
  it "can create a member without a role or patronus" do 

    info = {name: 'josh',
            house: 'Gryffindor'
            }
            
    member = Member.new(info)
    
    expect(member).to be_a(Member)
  end 
end 