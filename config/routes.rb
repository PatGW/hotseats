Hotseats::Application.routes.draw do
  
  resources :payment_notifications

  post 'payment_notifications', to: "payment_notifications#create", as: "pn"

  devise_for :applicants

  devise_for :employers
  get '/post-a-job', to: "jobs#new"
  get '/welcome', to: "info#welcome", as: "welcome"
  get '/apply-to-job/:id', to: "job_applications#create", as: "apply" 
  get 'view-job/:id', to: "jobs#show", as: "viewjob"
  get 'view-applications/:id', to: "jobs#applications", as: "viewapplications"
  get 'my-jobs', to: "jobs#myjobs", as: "myjobs"
  get 'approve-applicants', to: "admins#approve", as: "approveid"
  put 'approve-applicants/:id', to: "admins#update", as: "ap"
  get 'employer', to: "info#employer"
  get 'guarantee', to: "info#guarantee"
  get 'jobpayment', to: "jobs#payment"
  get 'prepaid/:id', to: "jobs#prepaid", as: "prepaid"

  mount Monologue::Engine, at: '/blog' 

  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post
  resource :jobs
  
  root to: "info#home"
end
