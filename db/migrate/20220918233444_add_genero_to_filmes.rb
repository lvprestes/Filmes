class AddGeneroToFilmes < ActiveRecord::Migration[7.0]
  def change
    add_column :filmes, :genero, :string
  end
end
