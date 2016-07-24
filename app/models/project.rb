class Project < ApplicationRecord
  belongs_to :user
  has_many :pledges
  has_many :users, through: :pledges, foreign_key: 'project_id'
  belongs_to :category
  has_many :rewards
  accepts_nested_attributes_for :rewards

  validates :goal, :user_id, :start_date, :end_date, :description, :title, :category_id, presence: true

  def calc_total()
    total = 0

    self.pledges.each do |pledge|
      # project = Project.where(id: pledge.project_id)
      total += pledge.amount

    end
    return total
  end

end
