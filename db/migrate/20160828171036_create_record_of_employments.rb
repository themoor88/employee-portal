class CreateRecordOfEmployments < ActiveRecord::Migration[5.0]
  def change
    create_table :record_of_employments do |t|

      t.timestamps
    end
  end
end
