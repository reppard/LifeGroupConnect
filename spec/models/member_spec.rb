require 'rails_helper'

describe Member, '#group_name' do
  it 'returns the name of the group member is in' do
    group = stub("Group")
    group.stub(:name).and_return("Wed Eve")

    member = Member.create
    member.stub(:groups).and_return([group])

    expect(member.group_name).to eql("Wed Eve")

  end
end

