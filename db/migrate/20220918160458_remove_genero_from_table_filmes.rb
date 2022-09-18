class RemoveGeneroFromTableFilmes < ActiveRecord::Migration[7.0]
  def change
    remove_column :filmes, :genero, :string
  end
end
