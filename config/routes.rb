Rails.application.routes.draw do
  resources :overview, only: %i[index]
end
