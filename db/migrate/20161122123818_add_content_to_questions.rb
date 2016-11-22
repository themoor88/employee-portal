class AddContentToQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :content, :text, after: :id
    add_reference :questions, :quiz, index: true
  end
end
