Rails.application.routes.draw do
  root "exchanger#index"
  get "search", to: "exchanger#search"

  namespace :api do
    namespace :v1 do     
      get "rate", to: "rates#rate"
      get "show", to: "rates#show"
    end    
  end
end
