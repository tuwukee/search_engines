class Movie < ActiveRecord::Base
  attr_accessible :name, :year
  has_many :goofs
end