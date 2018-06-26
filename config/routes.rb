Rails.application.routes.draw do
  resources :hotels, only: [:index, :show] do
    resources :feedbacks, only: [:index, :create]
  end

  root to: 'hotels#index'
end
