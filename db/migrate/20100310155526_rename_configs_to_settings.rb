class RenameConfigsToSettings < ActiveRecord::Migration
  def self.up
    rename_table :configs, :settings
  end

  def self.down
    rename_table :settings, :configs
  end
end
