class TaskListItemsController < ApplicationController
    before_action :set_task_list

    def create
        @task_list_item = @task_list.task_list_items.create(task_list_item_params)
        redirect_to @task_list
    end

    private
    def set_task_list
        @task_list = TaskList.find(params[:task_list_id])
    end

    def task_list_item_params
        params[:task_list_item].permit(:content)
    end
end
