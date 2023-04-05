Rails.application.routes.draw do
  root "administrator/dashboard#index"

  namespace :administrator do
    root "dashboard#index"

    devise_for :administrators, path: "", path_names: { sign_in: "login", sign_out: "logout" },
      skip: [:registrations, :passwords]

    # resources :posts do
    #   member do
    #     delete :delete_image_attachment
    #     get :copy
    #   end
    # end
    # resources :tags
    # resources :categories do
    #   member do
    #     delete :delete_image_attachment
    #   end
    # end

    # resources :reports, only: :index
  end
end
