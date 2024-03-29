::Refinery::Application.routes.draw do
  resources :payments, :only => [:index, :show]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :payments, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
