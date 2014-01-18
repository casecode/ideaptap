Ideatap::Application.routes.draw do

  root 'static_files#landing'
  
  devise_for :users, :controllers => { :registrations => "registrations" }
 
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
  end
end
