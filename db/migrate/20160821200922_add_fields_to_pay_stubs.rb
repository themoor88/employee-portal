class AddFieldsToPayStubs < ActiveRecord::Migration[5.0]
  def change
    add_column :pay_stubs, :first_day, :datetime, after: :id
    add_column :pay_stubs, :last_day, :datetime, after: :first_day
  end
end
