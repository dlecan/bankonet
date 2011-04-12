class CreateOperations < ActiveRecord::Migration
  def self.up
    create_table :operations do |t|
      t.string :type, :null => false
      t.decimal :amount, :precision => 10, :scale => 2, :null => false
      t.integer :account_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :operations
  end
end
