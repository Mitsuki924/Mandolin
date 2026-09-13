class CreateTweets < ActiveRecord::Migration[7.2]
  def change
    create_table :tweets do |t|
      t.string :name
      t.date :date
      t.time :time
      t.string :place
      t.text :program
      t.string :title
      t.string :price
      t.text :access
      t.string :photo

      t.timestamps
    end
  end
end
