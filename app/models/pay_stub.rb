# frozen_string_literal: true
# == Schema Information
#
# Table name: pay_stubs
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  first_day  :datetime
#  last_day   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PayStub < ApplicationRecord
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
  rails_admin do
    list do
      field :id
      field :user do
        label 'Name'
      end
      field :first_day
      field :last_day
      field :created_at
    end

    show do
      field :id
      field :user do
        label 'Name'
      end
      field :first_day
      field :last_day
      field :created_at
    end

    edit do
      field :user do
        label 'Name'
      end
      field :first_day
      field :last_day
    end

    export do
      field :id
      field :user do
        label 'Name'
      end
      field :first_day
      field :last_day
      field :created_at
    end
  end

  #------------------------------------------------------------------------------
  # private
end
