Rails.application.routes.draw do
  root "exchanger#home"
  post "search", to: "exchanger#search"
end
