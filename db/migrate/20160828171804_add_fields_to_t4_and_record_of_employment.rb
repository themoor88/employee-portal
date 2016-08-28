class AddFieldsToT4AndRecordOfEmployment < ActiveRecord::Migration[5.0]
  def change
    add_reference :t4_slips, :user, index: true, after: :id
    add_reference :record_of_employments, :user, index: true, after: :id
    add_attachment :record_of_employments, :file, after: :user_id
  end
end
