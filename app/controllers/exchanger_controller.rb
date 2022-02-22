class ExchangerController < ApplicationController

  # GET /
  def index    
  end

  # GET /search
  # Return the calculated currency amount on a particular date 
  def search
    @result = FixerService.new.calculate_amount(params[:to_currency], params[:amount], params[:date])
    render 'index'
  end

end
