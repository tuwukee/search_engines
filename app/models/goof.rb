class Goof < ActiveRecord::Base
  attr_accessible :goof_type, :movie_id, :description
  belongs_to :movie
end