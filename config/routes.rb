Rails.application.routes.draw do
  root to: 'company/overview#index'

  namespace 'company' do
    root to: 'overview#index'

    resources :overview, only: %i[index]
    resources :projects
    resources :proposals
  end

  namespace 'department' do
    root to: 'overview#index'

    resources :overview, only: %i[index]
    resources :projects do
      resources :project_updates, only: %i[new create]
    end
    resources :proposals, only: %i[show new create] do
      post '/show_interest', to: 'proposals#show_interest'
    end
  end
end
