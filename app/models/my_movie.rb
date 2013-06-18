class MyMovie < ActiveRecord::Base
  attr_accessible :name, :year

  establish_connection(
    :adapter  => "mysql2",
    :host     => "localhost",
    :username => "root",
    :database => "search_engines"
  )
end