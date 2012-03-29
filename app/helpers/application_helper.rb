module ApplicationHelper
  include ActionView::Helpers::NumberHelper

  def number_to_currency(amount, options = {})
    session[:current_currency] = Spree::Config[:main_currency] if session[:current_currency].nil?
    super amount if session[:current_currency].nil?
    currency = Currency.find_by_iso session[:current_currency]
    super amount if currency.nil?
    main_currency = Currency.find_by_iso Spree::Config[:main_currency]
    options = options.merge(:unit => currency.symbol)
    super (amount*(currency.rate/main_currency.rate)), options
  end
end
