Rails.application.routes.draw do
  

    devise_for :users

    get   '/tasks/:id/edit' => 'tasks#edit', as: 'edit_task'
    patch   '/tasks/:id/edit' => 'tasks#update', as: 'update_task'
    get   '/tasks/:id' => 'tasks#show', as: 'show_task'
    resources :categories do
        resources :tasks, except: [:edit, :update, :show]
    end
  
    get 'task/index'
    root 'tasks#index'

end
