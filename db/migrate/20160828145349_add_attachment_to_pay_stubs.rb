class AddAttachmentToPayStubs < ActiveRecord::Migration[5.0]
  def change
    add_attachment :pay_stubs, :file, after: :last_day
  end
end
