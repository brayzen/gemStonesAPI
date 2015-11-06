class AddStoneIdToImage < ActiveRecord::Migration
  def change
    add_column :images, :stone_id, :integer
  end
end
