# == Schema Information
#
# Table name: regions
#
#  id          :integer          not null, primary key
#  code_number :integer
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Region < ApplicationRecord
  has_and_belongs_to_many :states
  validates :code_number,:name, presence: true
end
