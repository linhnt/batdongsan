Batdongsan::Application.routes.draw do
  no_create = {except: [:new, :create]}
  no_index = {except: :index}

  namespace :user do
    root to: "top#index"
    resources :m_prefectures, only: :index
    resources :m_districts, only: :index
    resources :properties, only: :show
  end

end
