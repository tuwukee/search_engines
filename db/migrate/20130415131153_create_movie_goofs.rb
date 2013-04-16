class CreateMovieGoofs < ActiveRecord::Migration
  def up
    create_table :movies do |t|
      t.string :name
      t.string :year
    end

    create_table :goofs do |t|
      t.integer :movie_id
      t.string :goof_type
      t.text :description
    end
  end

  def down
    drop_table :movies
    drop_table :goofs
  end
end