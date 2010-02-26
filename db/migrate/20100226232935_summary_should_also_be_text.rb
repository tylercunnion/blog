class SummaryShouldAlsoBeText < ActiveRecord::Migration
    def self.up
      change_table :posts do |t|
        t.change :summary, :text
      end
    end

    def self.down
      change_table :posts do |t|
        t.change :summary, :string
      end
    end
  end
