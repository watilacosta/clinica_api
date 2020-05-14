Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'funcionario_token', to: 'funcionario_token#create'
      resources :funcionarios, only: %i[index create update destroy]
    end
  end
end
