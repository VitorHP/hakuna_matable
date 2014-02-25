Rails.application.routes.draw do

  resources :products

  mount HakunaMatable::Engine => "/hakuna_matable"
end
