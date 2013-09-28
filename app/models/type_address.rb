class TypeAddress < ActiveRecord::Base
  attr_accessible :description, :inactevated_at
  has_many :addresses
end
