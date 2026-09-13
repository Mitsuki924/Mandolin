class AddUserIdToMovies < ActiveRecord::Migration[7.2]
  def change
    add_column :movies, :user_id, :integer
  end
end
