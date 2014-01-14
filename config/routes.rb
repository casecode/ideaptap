Ideatap::Application.routes.draw do

  root 'static_files#landing'
  
  devise_for :users
  resources :users do
    resources :transactions
  end

  resources :ideas do
    resources :comments
  end

  resources :organizations
end
