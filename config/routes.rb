Rails.application.routes.draw do
  namespace 'company' do
    root to: 'overview#index'

    resources :overview, only: %i[index]
    resources :projects
    resources :proposals
  end

  namespace 'department' do
    root to: 'overview#index'

    resources :overview, only: %i[index]
    resources :projects
    resources :proposals, only: %i[show new create]
  end
end
