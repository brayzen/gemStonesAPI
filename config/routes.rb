Rails.application.routes.draw do

  namespace :api, path: '/', contraints: { subdomain: 'api' }, defaults: {format: :json} do
    resources :stones
  end
end
