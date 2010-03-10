class Setting < ActiveRecord::Base
  serialize :config
  
  validates_uniqueness_of :name
end
