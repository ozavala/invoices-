# == Schema Information
#
# Table name: users
#
#  id               :bigint(8)        not null, primary key
#  first_name       :string
#  last_name        :string
#  password_disgest :string
#  email            :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class User < ApplicationRecord
  has_secure_password

  has_many :role_users, inverse_of: :user
  has_many :roles, through: :role_users
  has_many :gymsite_users
  has_many :gymsites, through: :gymsite_users

  
end
