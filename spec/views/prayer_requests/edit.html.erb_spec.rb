require 'rails_helper'

RSpec.describe "prayer_requests/edit", :type => :view do
  before(:each) do
    @prayer_request = assign(:prayer_request, PrayerRequest.create!(
      :group_id => 1,
      :status => "MyString",
      :requested_by => "MyString",
      :focus => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit prayer_request form" do
    render

    assert_select "form[action=?][method=?]", prayer_request_path(@prayer_request), "post" do

      assert_select "input#prayer_request_group_id[name=?]", "prayer_request[group_id]"

      assert_select "input#prayer_request_status[name=?]", "prayer_request[status]"

      assert_select "input#prayer_request_requested_by[name=?]", "prayer_request[requested_by]"

      assert_select "input#prayer_request_focus[name=?]", "prayer_request[focus]"

      assert_select "input#prayer_request_description[name=?]", "prayer_request[description]"
    end
  end
end
