class User < ApplicationRecord
  validates :user_name, :user_second_name, :user_last_name, length: { maximum: 24 }
  validates :user_dni, length: { is: 8 }
  validates :user_name, :user_last_name, :user_dni, :user_municipality,
            :user_state, presence: true

  belongs_to :user_id
  has_many :products
  has_many :projects
end
