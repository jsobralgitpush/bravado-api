Rails.application.routes.draw do
  scope '/api', defaults: {format: :json} do
    resources :robots, only: [:index, :show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
