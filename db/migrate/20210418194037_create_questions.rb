class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|

      t.references :plan, null: false, foreign_key: true

      t.string :author
      t.text   :body

      t.timestamps
    end
  end
end
