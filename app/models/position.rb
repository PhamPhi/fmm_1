class Position < ActiveRecord::Base
  has_many :user_position_in_projects
  has_many :projects, through: :user_position_in_projects
  has_many :users, through: :user_position_in_projects

  validates :name, presence: true
  validates :abbreviation, presence: true
end
