class Goof < ActiveRecord::Base
  attr_accessible :goof_type, :movie_id, :description
  belongs_to :movie

  searchable do
    text :description
    string :goof_type
  end

  def self.text_search(query)
    where("description ilike :q or goof_type ilike :q", q: "%#{query}%")
  end
end