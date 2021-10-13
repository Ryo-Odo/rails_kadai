Rails.application.routes.draw do
  resources :chunters do
    collection do
      post :confirm
    end
  end
end
