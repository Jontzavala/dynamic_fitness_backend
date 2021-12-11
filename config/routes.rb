Rails.application.routes.draw do
  namspace :api do
    namespace :v1 do
      resources :gyms do
        resources :workouts
      end
    end
  end
end
