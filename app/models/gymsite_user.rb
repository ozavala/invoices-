class GymsiteUser < ApplicationRecord
  belongs_to :user, inverse_of: :gymsite_users
  belongs_to :gymsite, inverse_of: :gymsite_users
end
