Rails.application.routes.draw do
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 # CRUD actions: VERB url-name to: 'Controller#action'
 root to: 'tasks#index'
 # list all tasks - index
 get 'tasks', to: 'tasks#index'
 # view one task details - show with :id dynamic part find(params:[:id])
 get 'tasks/:id', to: 'tasks#show'
 # add a new task - create  - gonna take new and save
 get 'new', to: 'tasks#new'
 # update a task - takes edit and save
 # remove a task - destroy / delete
end
