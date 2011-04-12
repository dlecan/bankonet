class CreateTransfers < ActiveRecord::Migration
  def self.up
    create_table :transfers do |t|
      t.decimal :amount, :precision => 10, :scale => 2, :null => false
      t.integer :source_id, :null => false
      t.integer :target_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :transfers
  end
end
