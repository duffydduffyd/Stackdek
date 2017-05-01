class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :answer_text, null: false
      t.integer :author_id,  null: false
      t.integer :question_id, null: false
      t.integer :best_answer, default: 0

      t.timestamps(null: false)
    end
  end
end
