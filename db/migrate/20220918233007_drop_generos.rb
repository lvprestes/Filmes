class DropGeneros < ActiveRecord::Migration[7.0]
  def change
    drop_table :generos
  end
end
