class RemoveAnswerAttributeOnQuestionAndPutOnChoices < ActiveRecord::Migration[5.0]
  def change
    remove_column :questions, :answer, :boolean
    add_column :choices, :answer, :boolean
    add_reference :choices, :question, index: true, after: :id
  end
end
