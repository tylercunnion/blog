class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title
      t.string :slug
      t.string :summary
      t.string :text
      t.boolean :published, :default => false
      t.datetime :publish_date
      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
