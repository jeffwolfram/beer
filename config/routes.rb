Rails.application.routes.draw do
  resources :brews
  get 'brews/:id/edit_mash_g' => 'brews#edit_mash_g', as: :edit_mash_g
  get 'brews/:id/edit_pre_boil_g' => 'brews#edit_pre_boil_g', as: :edit_pre_boil_g
  get 'brews/:id/edit_final_g' => 'brews#edit_final_g', as: :edit_final_g
  get 'brews/:id/edit_pre_keg_g' => 'brews#edit_pre_keg_g', as: :edit_pre_keg_g
  get 'brews/:id/edit_mash_temp' => 'brews#edit_mash_temp', as: :edit_mash_temp
  get 'brews/:id/edit_mash_time' => 'brews#edit_mash_time', as: :edit_mash_time
  get 'brews/:id/edit_boil_time' => 'brews#edit_boil_time', as: :edit_boil_time
  resources :ingredients
  devise_for :users
 root to: 'welcome#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
