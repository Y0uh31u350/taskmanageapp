Rails.application.routes.draw do
  resources :posts, only: [:create]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages/show'
  resources :projects do
    resources :tasks, only: [:create, :destroy, :show]
  end
  resources :tasks do
    resources :comments, only: [:create, :destroy]
  end

  post 'projects/:project_id/tasks/:id/toggle' => 'tasks#toggle'
end
