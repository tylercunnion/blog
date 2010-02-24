class AddPostsCountToUser < ActiveRecord::Migration
  def self.up
	  change_table :users do |t|
		  t.integer :posts_count
	  end
  end

  def self.down
	  change_table :users do |t|
		  t.remove :posts_count
	  end
  end
end
