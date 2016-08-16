class CreatePayStubs < ActiveRecord::Migration[5.0]
  def change
    create_table :pay_stubs do |t|

      t.timestamps
    end
  end
end
