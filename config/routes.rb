Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  match 'currency' => 'currency#update_currency', :as => :update_currency
end
