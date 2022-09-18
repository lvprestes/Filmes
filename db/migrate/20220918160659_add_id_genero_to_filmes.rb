class AddIdGeneroToFilmes < ActiveRecord::Migration[7.0]
  def change
    add_column :filmes, :id_genero, :integer
  end
end
