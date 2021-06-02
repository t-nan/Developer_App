class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|

      t.references :question, null: false, foreign_key: true

      t.string :author
      t.text   :body

      t.timestamps
    end
  end
end
