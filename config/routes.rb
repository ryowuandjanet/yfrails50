Rails.application.routes.draw do
  devise_for :users
  resources :yfcases do
	resources :subsigntrueas, :controller => "yfcase_subsigntruea"
	resources :subsigntruebs, :controller => "yfcase_subsigntrueb"
	resources :subsigntruecs, :controller => "yfcase_subsigntruec"
  	resources :objectbuilds do 
		resources :plusrateas, :controller => "objectbuild_plusrateas"
		resources :plusratebs, :controller => "objectbuild_plusratebs"
		member do
			get :editplusratea, :controller => "yfcase_objectbuilds"
			get :editplusrateb, :controller => "yfcase_objectbuilds"
			patch :updateplusratea , :controller => "yfcase_objectbuilds"
			patch :updateplusrateb , :controller => "yfcase_objectbuilds"
		end
	end
  end
  root to: "yfcases#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
