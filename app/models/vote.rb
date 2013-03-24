class Vote < ActiveRecord::Base
  attr_accessible :demot_id, :user_id
  belongs_to :voter, :class_name => "User", :foreign_key => "user_id"
  belongs_to :demot, :counter_cache => true
end
