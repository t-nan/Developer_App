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
  


    

    


  end
