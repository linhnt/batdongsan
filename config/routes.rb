Batdongsan::Application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  root to: "top#index"
end
