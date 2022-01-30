class TaskListItem < ApplicationRecord
  belongs_to :task_list

def completed?
  !date_completed.blank?
end

end
