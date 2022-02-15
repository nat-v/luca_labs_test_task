class ExchangerController < ApplicationController

  def home    
  end

  def search
    @result = FixerService.new.calculate_amount(params[:to_currency], params[:amount], params[:date])
    render 'home'
  end

end
