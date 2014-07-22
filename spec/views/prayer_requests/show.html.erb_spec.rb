require 'rails_helper'

RSpec.describe "prayer_requests/show", :type => :view do
  before(:each) do
    @prayer_request = assign(:prayer_request, PrayerRequest.create!(
      :group_id => 1,
      :status => "Status",
      :requested_by => "Requested By",
      :focus => "Focus",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Requested By/)
    expect(rendered).to match(/Focus/)
    expect(rendered).to match(/Description/)
  end
end
