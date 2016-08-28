class MoveNameInUsers < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :name, :string, after: :email
  end
end
