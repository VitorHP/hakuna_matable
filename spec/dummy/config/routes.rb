Rails.application.routes.draw do

  mount HakunaMatable::Engine => "/"
  resources :products do
    collection do
      patch :update_multiple
    end
  end

end
