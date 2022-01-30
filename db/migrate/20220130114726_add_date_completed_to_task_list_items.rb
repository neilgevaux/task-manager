class AddDateCompletedToTaskListItems < ActiveRecord::Migration[7.0]
  def change
    add_column :task_list_items, :date_completed, :datetime
  end
end
