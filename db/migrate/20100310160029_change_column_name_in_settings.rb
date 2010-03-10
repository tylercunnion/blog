class ChangeColumnNameInSettings < ActiveRecord::Migration
  def self.up
    change_table :settings do |t|
      t.rename :settings, :config
    end
  end

  def self.down
    change_table :settings do |t|
      t.rename :config, :settings
    end
  end
end
