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
	member do
		get :yfratingscale #YF評量表
		get :deedtax #契稅申請書
		get :realestateregistration #不動產登記
		get :complaint #訴訟狀
		delete :delete_subsigntruea #刪除副署人員1
		delete :delete_subsigntrueb #刪除副署人員2
		delete :delete_subsigntruec #刪除副署人員3
	end
  end
  root to: "yfcases#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
