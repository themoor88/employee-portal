class AddReferenceToUserForPayStubs < ActiveRecord::Migration[5.0]
  def change
    add_reference :pay_stubs, :user, index: true, after: :id
  end
end
