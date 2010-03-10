class Setting < ActiveRecord::Base
  serialize :config
  
  validates_presence_of :name
  validates_uniqueness_of :name
end
