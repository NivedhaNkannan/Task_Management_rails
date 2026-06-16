class CreateSubtasks < ActiveRecord::Migration[8.1]
  def change
    create_table :subtasks do |t|
      t.references :task, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.date :due_date
      t.string :category
      t.string :priority

      t.timestamps
    end
  end
end
