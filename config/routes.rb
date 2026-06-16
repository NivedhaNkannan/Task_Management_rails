Rails.application.routes.draw do
  root "taskns#new"

  resources :taskns
end
