Rails.application.routes.draw do

  scope '/actors/:actor_id' do
      resources :movies
  end

  scope '/movies/:movie_id' do
      resources :actors
  end

end
