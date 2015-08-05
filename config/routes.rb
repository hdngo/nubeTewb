Rails.application.routes.draw do

    ACCEPTS_JSON = lambda {|request| request.accepts.include?(:json)}
    
    scope constraints: ACCEPTS_JSON do
      resources :categories do
        resources :videos
      end
      resources :videos, only: [:create]
      get '/search', to: 'videos#search'

      get '/search/result', to: 'videos#search_result'
    end

  get '*path', to: 'categories#index'
  root to: 'categories#index'
end
