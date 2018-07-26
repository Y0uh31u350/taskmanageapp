Rails.application.routes.draw do
  devise_for :users,  :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :projects do
    resources :tasks, only: [:create, :destroy, :show]
  end
  resources :tasks do
    resources :comments, only: [:create, :destroy]
  end

  resources :home

  root to: "home#index"

  post 'projects/:project_id/tasks/:id/toggle' => 'tasks#toggle'
end
