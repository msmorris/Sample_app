class User < ActiveRecord::Base
  has_many :posts

  attr_accessible :email, :name

  validates_presence_of [ :name, :email ]

  def disable!(reason)
    self.disabled_reason = reason
    self.disabled = true
    self.save
  end
end
