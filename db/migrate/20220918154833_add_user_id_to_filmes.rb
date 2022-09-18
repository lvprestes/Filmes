class AddUserIdToFilmes < ActiveRecord::Migration[7.0]
  def change
    add_column :filmes, :user_id, :integer
  end
end
