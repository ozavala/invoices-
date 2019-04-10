# == Schema Information
#
# Table name: roles
#
#  id         :bigint(8)        not null, primary key
#  role_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Role < ApplicationRecord
  has_many :role_users, inverse_of: :role
  has_many :users, through: :role_users, inverse_of: :role
end
