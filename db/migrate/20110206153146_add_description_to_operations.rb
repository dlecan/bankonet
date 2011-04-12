class AddDescriptionToOperations < ActiveRecord::Migration
  def self.up
    add_column :operations, :description, :string
  end

  def self.down
    remove_column :operations, :description
  end
end
