class Project < ApplicationRecord
  validates :project_name, :project_img, :project_description, presence: true

  belongs_to :user_id
end
