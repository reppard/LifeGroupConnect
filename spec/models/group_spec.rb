require 'rails_helper'

describe Group, '#members_sorted_by_name' do
  before(:each) do
  end
  it 'returns members sorted by name' do
    @members = []
    ["Reppard","Vada","River","Ashley"].each do |name|
      member = stub("Member")
      member.stub(:name).and_return(name)
      @members << member
    end

    group = Group.create
    group.stub(:members).and_return(@members)

    expect(group.members_sorted_by_name.first.name).to eql 'Ashley'
    expect(group.members_sorted_by_name.last.name).to eql 'Vada'
  end
end
