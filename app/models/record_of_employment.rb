# frozen_string_literal: true
# == Schema Information
#
# Table name: record_of_employments
#
#  id                :integer          not null, primary key
#  user_id           :integer
#  file_updated_at   :datetime
#  file_file_size    :integer
#  file_content_type :string(255)
#  file_file_name    :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class RecordOfEmployment < ApplicationRecord
  #------------------------------------------------------------------------------
  # Associations
  belongs_to :user

  #------------------------------------------------------------------------------
  # Scopes

  #------------------------------------------------------------------------------
  # Validations

  #------------------------------------------------------------------------------
  # Callbacks

  #------------------------------------------------------------------------------
  # Enumerations

  #------------------------------------------------------------------------------
  # AASM definitions

  #------------------------------------------------------------------------------
  # Class methods

  #------------------------------------------------------------------------------
  # Instance methods

  #------------------------------------------------------------------------------
  # Rails Admin Config

  #------------------------------------------------------------------------------
  # private
end
