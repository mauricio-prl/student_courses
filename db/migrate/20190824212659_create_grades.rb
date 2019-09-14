class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
      t.string :name
      t.string :duration
      t.integer :course_id

      t.timestamps
    end
  end
end
