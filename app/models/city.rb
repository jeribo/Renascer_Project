class City < ActiveRecord::Base
  belongs_to :state
  attr_accessible :description
end
