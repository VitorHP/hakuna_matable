Rails.application.routes.draw do

  mount HakunaMatable::Engine => "/"
  resources :products

end
