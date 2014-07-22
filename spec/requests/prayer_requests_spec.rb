require 'rails_helper'

RSpec.describe "PrayerRequests", :type => :request do
  describe "GET /prayer_requests" do
    it "works! (now write some real specs)" do
      get prayer_requests_path
      expect(response.status).to be(200)
    end
  end
end
