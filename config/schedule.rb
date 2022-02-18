every 1.day, :at => '12:00 am' do
  rake "exchanger:get_exchange_rate"
end