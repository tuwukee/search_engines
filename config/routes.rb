SearchEngines::Application.routes.draw do
  root :to => 'home#home'
  get '/sphinx', :to => 'sphinx_results#index', :as => :sphinx
end