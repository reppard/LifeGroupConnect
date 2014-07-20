class Group < ActiveRecord::Base
  has_many :memberships
  has_many :members, :through => :memberships

  def members_sorted
    self.members.sort_by{ |member| member.name }
  end
end
