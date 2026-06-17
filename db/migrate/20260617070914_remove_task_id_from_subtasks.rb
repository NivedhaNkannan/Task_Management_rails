class RemoveTaskIdFromSubtasks < ActiveRecord::Migration[8.1]
  def change
    remove_column :subtasks, :task_id
    add_reference :subtasks, :taskn, foreign_key: true
  end
end