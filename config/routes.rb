Rails.application.routes.draw do
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 # CRUD actions: VERB url-name to: 'Controller#action'
 root to: 'tasks#index'
 # list all tasks - index
 get 'tasks', to: 'tasks#index'
 # add a new task - create  - gonna take new and create
 get 'tasks/new', to: 'tasks#new', as: :new_task
 post "tasks", to: "tasks#create"
 # view one task details - show with :id dynamic part find(params:[:id])
 get 'tasks/:id', to: 'tasks#show', as: :task

 # update a task - takes edit and update
 get 'task/:id', to: 'tasks#edit', as: :edit_task
 patch 'tasks/:id', to: 'tasks#update'
 # remove a task - destroy / delete
 delete 'tasks/:id', to: 'tasks#destroy', as: :delete_task
end
