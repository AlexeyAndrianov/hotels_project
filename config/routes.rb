Rails.application.routes.draw do

  resources :hotels, only: [:index, :show] do
    scope module: 'hotels' do
      resources :feedbacks
    end

  end

  root to: 'hotels#index'
end
