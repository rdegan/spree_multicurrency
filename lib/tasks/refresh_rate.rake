namespace :spree_multicurrency do
  desc "Refresh currency rate"
  task :refresh_currency_rate => :environment do
    resp = Net::HTTP.get_response(URI.parse('http://openexchangerates.org/latest.json'))
    hash = JSON.parse(resp.body)
    if hash.has_key? 'Error'
          raise "web service error"
    end

    hash['rates'].each do |k,v|
      c = Currency.find_or_initialize_by_iso k
      c.symbol = k
      c.symbol = [8364].pack("U") if k == "EUR"
      c.symbol = [36].pack("U") if k == "USD"
      c.symbol = [163].pack("U") if k == "GBP"
      c.rate = v
      c.save
      puts "update #{k}"
    end
    puts "finish refresh currency"
  end
end
