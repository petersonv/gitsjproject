Rails.application.routes.draw do
  resources :users
  #should expect this resource inside the namespace (api/v1/questions)
  resources :questions

  #all the questions actions will be under the v1 scope
  namespace :api do
    namespace :v1 do
      resources :questions, defaults: {format: :json}
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
