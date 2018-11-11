Rails.application.routes.draw do
  namespace :companies do 
    resources :overview, only: %i[index]
  end 
end
