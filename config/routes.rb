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

  scope :api do
    post 'users/ideas' => 'users#idea', :as => :user_idea_api
    post 'ideas/:id/comments' => 'ideas#comment', :as => :idea_comment_api
    post 'users/transactions' => 'users#transaction', :as => :user_transaction_api
  end
end
