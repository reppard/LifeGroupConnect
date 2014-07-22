module PrayerRequestsHelper
  def members_of_group(group_id)
    memberships = Membership.where(group_id: group_id)
    Member.find(memberships.collect{ |m| m.member_id })
  end
end
