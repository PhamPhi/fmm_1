class UserPositionInProject < ActiveRecord::Base
  attr_accessor :member
  
  belongs_to :user
  belongs_to :project
  belongs_to :position
end
