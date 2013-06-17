class Movie < PostgreClient
  attr_accessible :name, :year
  has_many :goofs
end