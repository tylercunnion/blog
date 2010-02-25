class SetDefaultPubdate < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.change_default :publish_date, 0
    end
  end

  def self.down
  end
end
