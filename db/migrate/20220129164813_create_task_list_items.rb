class CreateTaskListItems < ActiveRecord::Migration[7.0]
  def change
    create_table :task_list_items do |t|
      t.string :content
      t.references :task_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
