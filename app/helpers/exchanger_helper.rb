module ExchangerHelper

  def countries_for_select
    file = File.read("#{Rails.root}/app/helpers/countries_codes_list.json")
    countries = JSON.parse(file)
  end

end