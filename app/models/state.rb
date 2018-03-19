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

class State < ApplicationRecord
  enum current_state: [:Inactivo,:activo,:active2]

  has_and_belongs_to_many :regions


end
