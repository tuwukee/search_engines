class PostgreClient < ActiveRecord::Base
  self.abstract_class = true
  establish_connection "postgre_#{RAILS_ENV}"
end