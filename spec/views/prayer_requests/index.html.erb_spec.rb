require 'rails_helper'

RSpec.describe "prayer_requests/index", :type => :view do
  before(:each) do
    assign(:prayer_requests, [
      PrayerRequest.create!(
        :group_id => 1,
        :status => "Status",
        :requested_by => "Requested By",
        :focus => "Focus",
        :description => "Description"
      ),
      PrayerRequest.create!(
        :group_id => 1,
        :status => "Status",
        :requested_by => "Requested By",
        :focus => "Focus",
        :description => "Description"
      )
    ])
  end

  it "renders a list of prayer_requests" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Requested By".to_s, :count => 2
    assert_select "tr>td", :text => "Focus".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
