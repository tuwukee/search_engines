class Goof < ActiveRecord::Base
  belongs_to :movie
  validates_presense_of :description
  is_indexed :fields => ['goof_type', 'description']
end
