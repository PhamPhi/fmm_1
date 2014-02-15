class UserSkill < ActiveRecord::Base
  attr_accessor :checked_skill
  belongs_to :skill
  belongs_to :user
end
