Rails.application.routes.draw do

  namespace :api, path: '/', contraints: { subdomain: 'api' } do
    resources :stones
  end
end
