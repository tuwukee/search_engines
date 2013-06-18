class MyGoof < ActiveRecord::Base
  attr_accessible :goof_type, :my_movie_id, :description
  belongs_to :my_movie

  establish_connection(
    :adapter  => "mysql2",
    :host     => "localhost",
    :username => "root",
    :database => "search_engines"
  )
end