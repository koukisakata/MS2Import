Rails.application.routes.draw do
  root to: 'home#index'
  get 'home/index'
  devise_for :users
  get 'brands/index'
  get 'functions/index'
  get 'tastes/index'
  get 'prices/index'
  get 'roll_screens/index'
  get 'roman_shades/index'
  get 'laces/index'
  get 'drapes/index'
  resources :wallpapers do
    collection { post :import }
  end
  resources :wallpapers do
    collection do
      delete 'destroy_all'
    end
  end
  resources :drapes do
    collection { post :import }
  end
  resources :drapes do
    collection do
      delete 'destroy_all'
    end
  end
  resources :laces do
    collection { post :import }
  end
  resources :laces do
    collection do
      delete 'destroy_all'
    end
  end
  resources :roman_shades do
    collection { post :import }
  end
  resources :roman_shades do
    collection do
      delete 'destroy_all'
    end
  end
  resources :roll_screens do
    collection { post :import }
  end
  resources :roll_screens do
    collection do
      delete 'destroy_all'
    end
  end
  resources :brands do
    collection { post :import }
  end
  resources :brands do
    collection do
      delete 'destroy_all'
    end
  end
  resources :functions do
    collection { post :import }
  end
  resources :functions do
    collection do
      delete 'destroy_all'
    end
  end
  resources :prices do
    collection { post :import }
  end
  resources :prices do
    collection do
      delete 'destroy_all'
    end
  end
  resources :tastes do
    collection { post :import }
  end
  resources :tastes do
    collection do
      delete 'destroy_all'
    end
  end

  def after_sign_in_path_for(resource)
    home_index_path
  end
  # ログアウト後の遷移先
  def after_sign_out_path_for(resource)
    new_user_session_path
  end
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
