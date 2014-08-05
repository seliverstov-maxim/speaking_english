English::Application.routes.draw do
  scope module: :web do
    root 'videos#index'
    resources :videos, only: [:index, :show]

    namespace :admin do
      root 'videos#index'
      resources :subtitles
      resources :videos
    end
  end
end
