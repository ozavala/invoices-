class Gymsite < ApplicationRecord
  has_many :gymsite_users
  has_many :users, through: :gymsite_users
end
