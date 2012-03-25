StartwalkApp::Application.routes.draw do
  
  
  match 'contact' => 'staticpages#contact', :as => :contact
  match 'service' => 'staticpages#service', :as => :service
  match 'privacy' => 'staticpages#privacy', :as => :privacy
  match 'whybuy' => 'staticpages#whybuy', :as => :whybuy
  match 'launch' => 'staticpages#launch', :as => :launch
  match 'about' => 'staticpages#about', :as => :about
  match 'howlaunch' => 'staticpages#howlaunch', :as => :howlaunch
  match 'howbuy' => 'staticpages#howbuy', :as => :howbuy
  



  devise_for :partners, :controllers => {
        :registrations => "registrations",
        :omniauth_callbacks => "users/omniauth_callbacks"
      } do
        get "logout" => "devise/sessions#destroy"
      end
  
  match 'pages/login'
  
  match 'projects/:id/support' => 'Projects#support', :as => :project_support
  
  
end
