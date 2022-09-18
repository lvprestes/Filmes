class AddUrlCapaToFilmes < ActiveRecord::Migration[7.0]
  def change
    add_column :filmes, :url_capa, :string
  end
end
