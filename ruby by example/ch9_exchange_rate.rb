require 'csv'
require 'net/http'
require 'uri'

puts "Enter amount of Australian dollars: "
aud = gets.chomp.to_i

scraped_data = Net::HTTP.get(URI.parse(
    "http://download.finance.yahoo.com/d/quotes.csv?s=AUDJPY=X&f=sl1d1t1ba&e=.csv"))

csv_data = CSV.parse(scraped_data)

csv_first_row = csv_data.shift

exchange_rate = csv_first_row[1].to_f

jpy = aud * exchange_rate

puts "At a current exchange rate of #{exchange_rate},"
puts "#{aud} Australian Dollars buys #{jpy} Japanese Yen."