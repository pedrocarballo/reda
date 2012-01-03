Reda::Application.routes.draw do
  root to: "home#index"
  match "subscribe" => "home#list_subscribe"
end
