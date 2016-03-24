Rails.application.routes.draw do
  root to: "job_applications#index"
  resources :job_applications, only: [:new, :create, :show, :index]
  resources :companies, only: [:new, :create, :show]
end
