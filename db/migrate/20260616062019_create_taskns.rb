class CreateTaskns < ActiveRecord::Migration[8.1]
  def change
    create_table :taskns do |t|
      t.string :name
      t.text :description
      t.date :due_date
      t.string :category
      t.string :priority

      t.timestamps
    end
  end
end
