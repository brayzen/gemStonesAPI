Rails.application.routes.draw do
  root 'welcome#index'
  namespace :api, path: '/', contraints: { subdomain: 'api' } do
    resources :stones
  end
end
