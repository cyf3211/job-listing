Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }


   
   resources :jobs
   root 'welcome#index'

   namespace :admin do
     resources :jobs do
       member do
         post :publish
         post :hide
       end
       resources :resumes
   end
end
   resources :jobs do
     resources :resumes
end
end
