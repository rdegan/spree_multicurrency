module Spree
  class CurrencyController < BaseController
    
    def update_currency
      session[:current_currency] = params[:current_currency]
      redirect_to root_path
    end
end
