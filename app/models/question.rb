# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  content    :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  quiz_id    :integer
#

class Question < ApplicationRecord
  belongs_to :quiz
  has_many :choices
end
