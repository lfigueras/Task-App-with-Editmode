Rails.application.routes.draw do
get '/categories/new'
get   '/tasks/:id/edit' => 'tasks#edit', as: 'edit_task'
patch   '/tasks/:id/edit' => 'tasks#update', as: 'update_task'
resources :categories do
    resources :tasks, except: [:edit, :update]
end
# , except: [:create, :destroy]
# , except: [:create, :destroy, :show]
# get '/categories/:id' => 'categories#show', as: 'show_category'
# post '/categories' => 'categories#create', as: 'create_category'
# delete '/categories/:id' => 'categories#destroy', as: 'delete_category'

# patch '/tasks/:id' => 'tasks#update'
# post '/tasks' => 'tasks#create', as: 'create_task'
# delete '/tasks/:id' =>  'tasks#destroy', as: 'delete_task'
root 'categories#new'
end
