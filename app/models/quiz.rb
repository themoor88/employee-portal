# == Schema Information
#
# Table name: quizzes
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  training_station_id :integer
#

class Quiz < ApplicationRecord
  belongs_to :training_station
  has_many :questions

  rails_admin do
    list do
      field :id
      field :name
      field :training_station
    end

    show do
      field :id
      field :name
      field :training_station
    end

    edit do
      field :id
      field :name
      field :training_station
    end

    export do
      field :id
      field :name
      field :training_station
    end
  end
end
