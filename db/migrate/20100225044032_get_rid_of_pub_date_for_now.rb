class GetRidOfPubDateForNow < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.remove :publish_date
    end
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
