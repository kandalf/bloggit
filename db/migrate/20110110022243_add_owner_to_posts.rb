class AddOwnerToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :owner_id, :integer, :allow_nil => false
  end

  def self.down
    remove_column :posts, :owner_id
  end
end
