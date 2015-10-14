class AddStoneIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :stone_id, :integer, index: true
  end
end
