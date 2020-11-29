Rails.application.routes.draw do
get '/categories/new'
resources :tasks, except: [:create, :destroy]
resources :categories, except: [:create, :destroy, :show]
get '/categories/:id' => 'categories#show', as: 'show_category'
post '/categories' => 'categories#create', as: 'create_category'
delete '/categories/:id' =>  'categories#destroy', as: 'delete_category'
post '/tasks' => 'tasks#create', as: 'create_task'
delete '/tasks/:id' =>  'tasks#destroy', as: 'delete_task'

root 'categories#new'
end
