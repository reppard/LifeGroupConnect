class PrayerRequest < ActiveRecord::Base
  belongs_to :group

  def requesters_name
    Member.find(self.requested_by).name
  end
end
