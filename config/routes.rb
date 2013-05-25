Hotseats::Application.routes.draw do
  
  devise_for :applicants
  devise_for :employers



  get '/post-a-job', to: "jobs#new"
  get '/welcome', to: "info#welcome", as: "welcome"
  
  get '/apply-to-job/:id', to: "job_applications#create", as: "apply" 

  get 'view-job/:id', to: "jobs#show", as: "viewjob"

  get 'view-applications/:id', to: "job_applications#show", as: "viewapplications"

  get 'my-jobs', to: "info#myjobs"
  

  resource :jobs

  resources :job_applications
  
  

  root to: "info#home"
end
