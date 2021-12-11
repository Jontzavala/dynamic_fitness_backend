Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :gyms do
        resources :workouts
      end
    end
  end
end
