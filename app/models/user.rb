class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  scope :normal_users, -> { where(admin: false) }
end
