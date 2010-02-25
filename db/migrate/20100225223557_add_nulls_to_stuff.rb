class AddNullsToStuff < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.change :title, :string, :null => false
      t.change :text, :string, :null => false
      t.change :slug, :string, :null => false
    end
  end

  def self.down
    change_table :posts do |t|
      t.change :title, :string, :null => true
      t.change :text, :string, :null => true
      t.change :slug, :string, :null => true
    end
  end
end
