class CreateMovies < ActiveRecord::Migration[7.2]
  def change
    create_table :movies do |t|
      t.string :movietitle
      t.text :link
      t.text :point

      t.timestamps
    end
  end
end
