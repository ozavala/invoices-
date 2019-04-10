# == Schema Information
#
# Table name: role_users
#
#  id         :bigint(8)        not null, primary key
#  role_id    :bigint(8)
#  user_id    :bigint(8)
#  from_date  :date
#  thru_date  :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class RoleUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
