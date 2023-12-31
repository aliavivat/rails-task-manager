Rails.application.routes.draw do
  # read all
  get '/tasks', to: 'tasks#index', as: :tasks
  # create 1) form 2) creation
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks', to: 'tasks#create' # no prefix here
  # read one
  get '/tasks/:id', to: 'tasks#show', as: :task
  # update 1) form 2) patch
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update' # no prefix
  # delete
  delete 'tasks/:id', to: 'tasks#destroy' # no prefix
end
