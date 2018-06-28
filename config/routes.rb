Rails.application.routes.draw do

  devise_for :users
  resources :hotels, only: [:index, :show, :new, :create] do
    scope module: 'hotels' do
      resources :feedbacks
    end

  end

  root to: 'hotels#index'
end
