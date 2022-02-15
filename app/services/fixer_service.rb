class FixerService
  BASE_URL = "http://data.fixer.io/api/"
  API_KEY = "access_key = #{ENV["FIXER_API_KEY"]}"

  # Calculates the currency amount.
  # Takes in two currency codes, one amount and date(optional) as input.
  # If the date is not provided by the user, uses the latest exchange rates.
  def calculate_amount(from_currency="EUR", to_currency, amount, date="latest")
    response = HTTP.get("#{BASE_URL}#{date}?#{API_KEY}&symbols=#{second_currency}").to_s    
    parsed_response = JSON.parse(response)
    result_amount = amount * parsed_response.rates[to_currency]
  end

end