class Reward < ApplicationRecord
  belongs_to :project
  has_many :pledges, foreign_key: 'reward_id'
end
