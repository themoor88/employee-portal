# frozen_string_literal: true
# == Schema Information
#
# Table name: training_stations
#
#  id                                   :integer          not null, primary key
#  user_id                              :integer
#  name                                 :string(255)
#  certified                            :boolean          default(FALSE)
#  handbook_and_guidelines_updated_at   :datetime
#  handbook_and_guidelines_file_size    :integer
#  handbook_and_guidelines_content_type :string(255)
#  handbook_and_guidelines_file_name    :string(255)
#  created_at                           :datetime         not null
#  updated_at                           :datetime         not null
#

class TrainingStation < ApplicationRecord
  #------------------------------------------------------------------------------
  # Associations
  belongs_to :user
  has_many :quizzes
  has_attached_file :handbook_and_guidelines

  #------------------------------------------------------------------------------
  # Scopes

  #------------------------------------------------------------------------------
  # Validations
  validates_attachment :handbook_and_guidelines, content_type: { content_type: %w(application/pdf) }

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
  rails_admin do
    list do
      field :id
      field :user do
        label 'User'
      end
      field :name
      field :certified
      field :handbook_and_guidelines
    end

    show do
      field :id
      field :user do
        label 'User'
      end
      field :name
      field :certified
      field :handbook_and_guidelines
    end

    edit do
      field :id
      field :user do
        label 'User'
      end
      field :name
      field :certified
      field :handbook_and_guidelines
    end

    export do
      field :id
      field :user do
        label 'User'
      end
      field :name
      field :certified
      field :handbook_and_guidelines
    end
  end

  #------------------------------------------------------------------------------
  # private
end
