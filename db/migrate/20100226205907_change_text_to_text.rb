class ChangeTextToText < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.change :text, :text, :null => false
    end
  end

  def self.down
    change_table :posts do |t|
      t.change :text, :string, :null => false
    end
  end
end
