class DropHomes < ActiveRecord::Migration[7.0]
  def change
    drop_table :homes
  end
end
