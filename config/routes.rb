Rails.application.routes.draw do
  resources :brews
  get 'brews/:id/edit_mash_g' => 'brews#edit_mash_g', as: :edit_mash_g
  resources :ingredients
  devise_for :users
 root to: 'welcome#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
