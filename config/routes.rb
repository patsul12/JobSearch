Rails.application.routes.draw do
  resources :job_applications, only: [:new, :create, :show, :index]
end
