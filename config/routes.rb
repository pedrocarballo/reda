Reda::Application.routes.draw do
  root to: "home#index"
  match "subscribe" => "home#list_subscribe"
  match "success" => "home#success"
  match "error" => "home#error"
end
