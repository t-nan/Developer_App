Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

    root 'plans#index'


    resources :plans do
      resources :questions do
        resources :answers
      end
    end


    resources :plans do
      resources :flats
    end
    

    resource :static_pages

    resources :flats

    resource :contacts

    # admin area
    get "/admin" => "admin/plans#index"


    namespace :admin do
     resources :plans do
      resources :questions do
        resources :answers
      end
     end
   end

    namespace :admin do
      resources :plans do
        resources :flats
      end
    end


    namespace :admin do
      resource :static_pages
    end

    namespace :admin do
      resources :flats
    end

    namespace :admin do
      resources :contacts
    end

    namespace :admin do
      resources :questions
    end
  


    

    


  end
