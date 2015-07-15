Tweet::Application.routes.draw do
  root :to => "tweet#input"
  get "tweet/input"
  post "tweet/update"
  get "/auth/:provider/callback" => "sessions#create"
  get "/signout" => "sessions#destroy"
end
