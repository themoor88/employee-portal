# == Schema Information
#
# Table name: choices
#
#  id          :integer          not null, primary key
#  question_id :integer
#  content     :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  answer      :boolean
#

class Choice < ApplicationRecord
  belongs_to :question
end
