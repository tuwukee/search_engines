SearchEngines::Application.routes.draw do
  root :to => 'sphinx_results#index'
end