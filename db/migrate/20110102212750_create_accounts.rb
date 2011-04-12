class CreateAccounts < ActiveRecord::Migration
  def self.up
    create_table :accounts do |t|
      t.string :description, :null => false
      t.decimal :balance, :precision => 10, :scale => 2
      t.integer :user_id, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :accounts
  end
end
