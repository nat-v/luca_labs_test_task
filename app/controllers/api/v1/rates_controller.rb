module Api
  module V1
    class RatesController < ApplicationController
      skip_before_action :verify_authenticity_token
    
      # GET /api/v1/show
      # Return all the exchange rates for one currency for a given period of time
      def show
        base = Base.where(country_code: params[:base])
        rate = Rate.where(base_id: base, date: params[:date]).pluck(:rate_value)        
     
        if rate
          render json: rate, status: :ok
        else
          render json: { error: 'Unable to get the exchange rates.' }, status: :unprocessable_entity
        end
      end
    
      # GET /api/v1/rate
      # Return the calculated currency amount on a particular date
      def rate     
        base = Base.where(country_code: params[:base])
        rate = Rate.where(base_id: base, country_code: params[:country_code], date: params[:date]).take        

        if rate
          result_amount = rate["rate_value"].to_f * params[:amount].to_i
          render json: result_amount, status: :ok
        else
          render json: {error: 'Unable to get the amount.'}, status: :unprocessable_entity
        end
      end
      
    end
  end
end