class AddDefaultPostCount < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.change_default :posts_count, 0
	  end
  end

  def self.down
  end
end
