Rails.application.routes.draw do

  resources :task_lists do
    resources :task_list_items do
      member do
        patch :complete
      end
    end
  end

  root "task_lists#index"

end
