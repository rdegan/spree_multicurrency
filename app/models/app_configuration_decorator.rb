Spree::AppConfiguration.class_eval do

  preference :main_currency, :string, :default => 'EUR'
end