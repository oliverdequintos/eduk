class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :student_id
      t.integer :teacher_id
      t.decimal :rate
      t.text :notes

      t.timestamps null: false
    end
  end
end
