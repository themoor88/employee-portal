class AddAnswerBooleanToQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :answer, :boolean, after: :content
  end
end
