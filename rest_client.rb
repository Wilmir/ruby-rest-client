require 'rest-client'

puts "This command line application  allows you to perform bing search (https://www.bing.com/search)."
puts  "Enter the keyword you wish to search for"
keyword = gets.chomp

response = RestClient.get "https://www.bing.com/search", {params: {q: keyword}}


puts "Here is your result"
puts "Response Headers"
puts response.headers

puts "Response Body"
puts response.body

puts "Response Cookies"
puts response.cookies