Rails.application.routes.draw do
 root "home#index"
get "/shop", to: "home#shop"
end
