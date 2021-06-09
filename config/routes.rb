Rails.application.routes.draw do
  root to: "dados_inportacao_cnabs#index"
  resources :dados_inportacao_cnabs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
