Rails.application.routes.draw do
  root to: "/tasks", to: "tasks#index", as: :tasks
  get "/tasks/new", to: "tasks#new", as: :new
  get "/tasks/:id", to: "tasks#show", as: :task
  get "/tasks/:id/edit", to: "tasks#edit", as: :edit

  post "/tasks", to: "tasks#create"
  patch "/tasks/:id", to: "tasks#update"
end
