Rails.application.routes.draw do
  root "taskns#new"

  resources :taskns do
    resources :subtasks
  end
end
