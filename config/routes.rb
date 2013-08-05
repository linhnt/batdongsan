Batdongsan::Application.routes.draw do

  devise_for :admins

  mount Ckeditor::Engine => '/ckeditor'
  root to: "admin/admins#index"
end
