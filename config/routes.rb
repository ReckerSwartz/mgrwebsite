Rails.application.routes.draw do
  
  
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations',
      }, :skip => [:sessions,:registrations]
       devise_scope :user do
        get 'login' => 'users/sessions#new', as: :new_user_session
        post 'login' => 'users/sessions#create', as: :user_session
        delete 'logout' => 'users/sessions#destroy', as: :destroy_user_session
        get 'signup' => 'users/registrations#new' , as: :new_user_registration
        post 'signup' => 'users/registrations#create', as: :user_registration
        authenticated :user do
          get 'profile' => 'users/profiles#index', as: :user_profile
        end
        
       end
  
  devise_for :admins, controllers: {
        sessions: 'admins/sessions',
      }, skip: [:sessions]
      devise_scope :admin do
        get 'admin' => 'admins/sessions#new', as: :new_admin_session
        post 'admin' => 'admins/sessions#create', as: :admin_session
        delete 'logout' => 'admins/sessions#destroy', as: :destroy_admin_session
        authenticated :admin do
          get 'profile' => 'admins/profiles#index', as: :admin_profile
        end
       end
       
    devise_for :teachers, controllers: {
        sessions: 'teachers/sessions',
      }, skip: [:sessions]
      devise_scope :teacher do
        get 'teacher' => 'teachers/sessions#new', as: :new_teacher_session
        post 'teacher' => 'teachers/sessions#create', as: :teacher_session
        delete 'logout' => 'teachers/sessions#destroy', as: :destroy_teacher_session
       end
       
      
     
      
      
      
      
  root 'welcomes#index'
  
  get 'tabs' , to: 'welcomes#tabs'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
