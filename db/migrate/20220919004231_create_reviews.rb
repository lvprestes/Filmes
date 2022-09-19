class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :nota
      t.text :comentario

      t.timestamps
    end
  end
end
