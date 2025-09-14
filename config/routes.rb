Rails.application.routes.draw do
  # Root route (home page)
  root "pages#home"

  # Static pages
  get "about", to: "pages#about"
  get "contact", to: "pages#contact"
  get "experience", to: "pages#experience"
  get "education", to: "pages#education"

  # Optional: Projects resource
  resources :projects, only: [:index, :show]
end
