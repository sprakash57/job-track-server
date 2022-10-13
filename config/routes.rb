Rails.application.routes.draw do
  root "subscriptions#index"

  resources :subscriptions do
    resources :comments
  end
end
