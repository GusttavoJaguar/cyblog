Rails.application.routes.draw do
    # Autenticação do administrador
    
    # Rotas Públicas
    root "pages#inicio"

    get "inicio", to: "pages#inicio"
    get "sobre", to: "pages#sobre"
    get "contatos", to: "pages#contatos"
  
    resources :posts do
      resources :comments
    end # Apenas visualização
    resources :eventos # Apenas visualização
    resources :inscricaos # Apenas visualização
    
    get "admin", to: "admin/dashboard#index"
    
    devise_for :administradors, path: 'administrador'
  
    # Área Administrativa (Restrita a Admins)
    namespace :admin do
      root "dashboard#index"  # Painel admin
      resources :posts, only: [:index, :show, :new, :edit, :create, :update, :destroy] do # Admin gerencia posts
        resources :comments, only: [:index, :show, :new, :edit, :create, :update, :destroy] # Admin gerencia comentários dos posts
      end
      resources :comments, only: [:index, :show, :new, :edit, :create, :update, :destroy] # Admin gerencia comentários gerais
      resources :eventos, only: [:index, :show, :new, :edit, :create, :update, :destroy] # Admin gerencia eventos
      resources :inscricaos, only: [:index, :show, :new, :edit, :create, :update, :destroy] # Admin gerencia inscrições 
    end
  end
  