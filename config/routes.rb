Hotseats::Application.routes.draw do
  
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

 
  

  resource :jobs

  #resources :job_applications
  
  

  root to: "info#home"
end
