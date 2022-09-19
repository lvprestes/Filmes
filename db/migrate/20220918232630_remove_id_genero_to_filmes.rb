class RemoveIdGeneroFromTableFilmes < ActiveRecord::Migration[7.0]
  def change
    remove_column :filmes, :id_genero, :integer
  end
end
