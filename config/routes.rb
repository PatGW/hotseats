Hotseats::Application.routes.draw do
  
  devise_for :applicants
  devise_for :employers



  get '/post-a-job', to: "jobs#new"
  get '/welcome', to: "info#welcome", as: "welcome"
  
  get '/apply-to-job/:id', to: "job_applications#create", as: "apply" 
  
  resource :jobs
  
  

  root to: "info#home"
end
