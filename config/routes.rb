Rails.application.routes.draw do
  devise_for :users

  root to: "job_applications#index"

  resources :job_applications do
    get :autocomplete_company_name, on: :collection
    post 'add_contact', to: 'job_applications#add_contact'
  end

  resources :companies, only: [:new, :create, :show]

  resources :users, only: [:show] do
    get 'contacts', to: 'users#contacts'
    get '/contact/:contact_id', to: 'contacts#update'
  end

  resources :contacts, only: [:new, :create, :destroy, :edit, :update]
  post 'contact/:contact_id', to: 'contacts#update'

  resources :job_postings, only: [:index, :new, :create]
end
