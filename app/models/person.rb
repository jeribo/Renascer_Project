class Person < ActiveRecord::Base
  attr_accessible :birthday, :email, :fathers_name, :federal_id, :mothers_name, :name, :regional_id
  has_many :addresses
  accepts_nested_attributes_for :addresses
end
