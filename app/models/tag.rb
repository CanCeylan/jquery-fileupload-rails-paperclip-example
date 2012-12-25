class Tag < ActiveRecord::Base
  attr_accessible :content

  has_many :descriptions
  has_many :uploads, :through => :descriptions

  validates :content, :uniqueness => true

end
