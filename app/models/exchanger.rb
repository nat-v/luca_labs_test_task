class Exchanger < ApplicationRecord
  BASE_URL = "http://data.fixer.io/api/"
  API_KEY = "access_key=#{ENV["FIXER_API_KEY"]}"

  # Retrieve the latest exchange rate and store it in database.
  def self.update_rates    
    response = HTTP.get("#{BASE_URL}latest?#{API_KEY}").to_s
    parsed_response = JSON.parse(response)

    if parsed_response['success'] == true
      # In case if we had a few base records available, we would use something like this:
      # rate.base_id = Base.where(country_code: parsed_response['base']).take
      base = Base.first

      parsed_response['rates'].map do |data|
        rate = Rate.new(
          country_code: data[0],
          rate_value: data[1],
          date: parsed_response['date'],
          base_id: base.id
        )
        rate.save              
      end
    end
  end
end