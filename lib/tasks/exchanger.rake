# Can't really check if this actually works on Windows ¯\_(ツ)_/¯
namespace :exchanger do
  desc "Retrieve the latest exchange rate and store it in a database"
  task get_exchange_rate: :environment do
    Exchanger.update_rates()
    puts "#{Time.now} — The exchange rate data has been updated"
  end
end