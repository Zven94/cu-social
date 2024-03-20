class Claim < ApplicationRecord
  validates :claim_name, length: { maximum: 100 }
  validates :claim_name, :claim_img, :claim_description, 
            presence: true

  belongs_to :projects_id
end
