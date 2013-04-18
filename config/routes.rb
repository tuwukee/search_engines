SearchEngines::Application.routes.draw do
  root :to => 'results#index', :as => :results
end