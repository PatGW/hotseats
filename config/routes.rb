Hotseats::Application.routes.draw do
  
  resources :payment_notifications

  post 'payment_notifications', to: "payment_notifications#create", as: "pn"


  devise_for :applicants

  devise_for :employers



  get '/post-a-job', to: "jobs#new"
  get '/welcome', to: "info#welcome", as: "welcome"
  
  get '/apply-to-job/:id', to: "job_applications#create", as: "apply" 

  get 'view-job/:id', to: "jobs#show", as: "viewjob"

  #get 'view-applications/:id', to: "job_applications#show", as: "viewapplications"

  get 'view-applications/:id', to: "jobs#applications", as: "viewapplications"


  get 'my-jobs', to: "jobs#myjobs", as: "myjobs"

  # get 'approve', to: "admins#approve", as: "approve"

  get 'approve-applicants', to: "admins#approve", as: "approveid"

  put 'approve-applicants/:id', to: "admins#update", as: "ap"

  # put 'approver/:id', to: "admins#update", as: "approver"

  get 'contact', to: "info#contact"

  get 'blog', to: "info#blog"

  get 'employer', to: "info#employer"

  get 'guarantee', to: "info#guarantee"

  get 'jobpayment', to: "jobs#payment"

  get 'prepaid/:id', to: "jobs#prepaid", as: "prepaid"
 
  

  resource :jobs

  #resources :job_applications
  
  

  root to: "info#home"
end
