class Project < ApplicationRecord
  validates :project_name, length: { maximum: 100 }
  validates :project_name, :project_img, :project_description, presence: true

  belongs_to :user_id
end
