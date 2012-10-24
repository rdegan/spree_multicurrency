Spree::AppConfiguration.class_eval do
  # for default Main Currency
  preference :main_currency, :string, :default => 'EUR'
end