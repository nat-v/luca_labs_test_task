module ExchangerHelper
  # Reads the country codes from a file to populate `to_currency` select field
  def countries_for_select
    file = File.read("#{Rails.root}/app/helpers/countries_codes_list.json")
    countries = JSON.parse(file)
  end
end