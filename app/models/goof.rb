class Goof < PostgreClient
  attr_accessible :goof_type, :movie_id, :description
  belongs_to :movie

  searchable do
    text :description
    text :goof_type
  end

  def self.text_search(query)
    where("description @@ :q or goof_type @@ :q", q: query).limit(15)
  end
end