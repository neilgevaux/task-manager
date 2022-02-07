class TaskListItemsController < ApplicationController
    before_action :set_task_list
    before_action :set_task_list_item, except: [:create]

    def index
    end

    def create
        @task_list_item = @task_list.task_list_items.create(task_list_item_params)
        redirect_to @task_list
    end

    def destroy
        if @task_list_item.destroy
            flash[:success] = "Task was deleted."
        else
            flash[:error] = "Task could not be deleted."
            redirect_to @task_list
        end
    end

    def complete
        @task_list_item.update_attribute(:date_completed, Time.now)
        redirect_to @task_list, notice: "Task completed"
    end

    private
    def set_task_list
        @task_list = TaskList.find(params[:task_list_id])
    end

    def set_task_list_item
        @task_list_item = @task_list.task_list_items.find(params[:id])
    end

    def task_list_item_params
        params[:task_list_item].permit(:content)
    end
end
