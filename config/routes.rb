Rails.application.routes.draw do
  devise_for :users
  root to: "job_applications#index"
  resources :job_applications do
    get :autocomplete_company_name, on: :collection
  end
  resources :companies, only: [:new, :create, :show]
  resources :users, only: [:show] do
    get 'contacts', to: 'users#contacts'
  end
  resources :contacts, only: [:new, :create]
end
