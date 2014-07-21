class Group < ActiveRecord::Base
  has_many :memberships
  has_many :members, :through => :memberships

  def members_sorted_by_name
    self.members.sort_by{ |member| member.name }
  end
end
