English::Application.routes.draw do
  scope module: :web do
    namespace :admin do
      resources :subtitles
      resources :videos
    end
  end
end
