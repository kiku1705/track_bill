Rails.application.routes.draw do
  namespace "api" do
    resources :users, only: [:show,:create]
    
    resources :order_histories, only: [:index] do
      collection do 
        post :order_histories
      end
    end 

    resources :organisations, only: [] do
      resources :item_prices, only: [:index]
    end
  end
end
