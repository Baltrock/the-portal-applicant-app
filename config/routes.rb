Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  resources :management_review_forms
  resources :management_request_forms
  resources :management_applicant_forms
  resources :investor_invest_forms
  resources :investor_company_forms
  resources :update_forms
  resources :selection_forms
  resources :new_project_forms
  resources :available_backstage_forms
  resources :available_frontstage_forms
  resources :glitch_input_forms
  resources :resignation_forms
  resources :complaint_forms
  resources :transfer_forms
  resources :crew_applicant_forms
  resources :artist_applicant_forms
  resources :musician_applicant_forms
  resources :actor_applicant_forms
  resources :information_forms
  devise_for :admin, controllers: {registrations: "admin/registrations"}
  devise_for :users, controllers: { registrations: "users/registrations" }
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  delete "/logout", to: "sessions#destroy"
  post "/signup", to: "sessions#create"
  post "/login", to: "sessions#create"
  post "actor_applicant_forms", to: "user#primary"
  get "about", to: "pages#about", as: :about
  get 'admin' => 'admin#primary', as: :admin_root
  get 'users' => 'users#primary', as: :user_root
  get 'admin_view_users' => 'pages#admin_view_users', as: :admin_view_users

  # Defines the root path route ("/")
  # root "articles#index"
  get '/management_review_forms', to: 'management_review_forms#index', as: :management_review
  get '/management_request_forms', to: 'management_request_forms#index', as: :management_request
  get '/management_applicant_forms', to: 'management_applicant_forms#index', as: :management_applicant
  get '/investor_invest_forms', to: 'investor_invest_form#index', as: :company_invest
  get '/investor_company_forms', to: 'investor_company_forms#index', as: :company_form
  get '/glitch_input_forms', to: 'glitch_input_forms#index', as: :glitch_form
  get '/update_forms', to: 'update_forms#index', as: :primary_update
  get '/selection_forms', to: 'election_forms#index', as: :bens_selection
  get '/new_project_forms', to: 'new_project_forms#index', as: :project_form
  get '/available_frontstage_forms', to: 'available_frontstage_forms#index', as: :available_frontstage
  get '/available_backstage_forms', to: 'available_backstage_forms#index', as: :available_backstage
  get '/actor_applicant_forms', to: 'actor_applicant_forms#index', as: :actor_applicant
  get '/artist_applicant_forms', to: 'artist_applicant_forms#index', as: :artist_applicant
  get '/crew_applicant_form', to: 'crew_applicant_forms#index', as: :crew_applicant
  get '/information_forms', to: 'information_forms#index', as: :information
  get '/musician_applicant_forms', to: 'musician_applicant_forms#index', as: :musician_form
  get '/transfer_forms', to: 'transfer_forms#index', as: :form_transfer
  get '/complaint_forms', to: 'complaint_forms#index', as: :form_complaint
  get '/resignation_form', to: 'resignation_forms#index', as: :form_resign
end
