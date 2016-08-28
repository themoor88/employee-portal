class CreateT4Slips < ActiveRecord::Migration[5.0]
  def change
    create_table :t4_slips do |t|

      t.timestamps
    end
  end
end
