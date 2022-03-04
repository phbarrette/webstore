Rails.application.routes.draw do
 root "home#index"
get "/products/:id/buy", to: "home#buy", as: "buy"
 get "/products", to: "home#shop", as: "shop"
 get "/products/:id", to: "home#show"
 get "/checkout", to: "home#checkout", as: "checkout"
end
