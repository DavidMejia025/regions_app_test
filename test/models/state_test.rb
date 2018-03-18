# == Schema Information
#
# Table name: states
#
#  id            :integer          not null, primary key
#  code_number   :integer
#  name          :string
#  current_state :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class StateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
