class Member < ActiveRecord::Base
  has_many :memberships
  has_many :groups, :through => :memberships

  def group_name
    self.groups.first.name
  end
end
