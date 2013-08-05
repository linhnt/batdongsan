Batdongsan::Application.routes.draw do
  no_create = {except: [:new, :create]}
  no_index = {except: :index}

  namespace :user do
  end

end
