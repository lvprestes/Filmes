class CreateFilmes < ActiveRecord::Migration[7.0]
  def change
    create_table :filmes do |t|
      t.string :titulo
      t.string :sinopse
      t.integer :ano
      t.string :genero

      t.timestamps
    end
  end
end
