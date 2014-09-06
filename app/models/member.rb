class Member < ActiveRecord::Base
  has_many :memberships
  has_many :groups, :through => :memberships

  def group_name
    self.groups.first.name unless has_no_groups?
  end

  def group_id
    self.groups.first.id unless has_no_groups? 
  end

  def role
    self.memberships.first.role unless self.memberships.empty?
  end

  def has_no_groups?
    self.groups.empty?
  end
end
