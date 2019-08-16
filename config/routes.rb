Rails.application.routes.draw do
  resources :cocktails, only: [ :show, :index, :create, :new, :destroy ] do
      resources :doses, only: [ :new, :create]
  end
  resources :doses

  root to: 'cocktails#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
