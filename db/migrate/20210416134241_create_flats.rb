class CreateFlats < ActiveRecord::Migration[6.0]
  def change
    create_table :flats do |t|

      t.references :plan, null: false, foreign_key: true
 
      t.integer :entrance
      t.integer :floor
      t.integer :number 
      t.integer :square
      t.integer :rooms
      t.boolean :status


      t.timestamps
    end
  end
end
