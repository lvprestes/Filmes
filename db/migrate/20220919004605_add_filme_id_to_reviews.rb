class AddFilmeIdToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :filme_id, :integer
  end
end
