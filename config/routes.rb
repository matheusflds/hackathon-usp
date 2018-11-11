Rails.application.routes.draw do
  namespace :companies do 
    root to: 'overview#index'

    resources :overview, only: %i[index]
    resources :projects
  end 
end
