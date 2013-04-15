class Movie < ActiveRecord::Base
  has_many :goofs
  validates_presense_of :name
end