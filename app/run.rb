require 'net/http'
require 'uri'
require 'json'


def getJoke
  uri = URI.parse("https://icanhazdadjoke.com/")
    request = Net::HTTP::Get.new(uri)
    request["Accept"] = "application/json"

    req_options = {
     use_ssl: uri.scheme == "https",
    }

  response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
     http.request(request)
  end
  JSON.parse(response.body)
end
#
# response2 = Net::HTTP.staßrt(uri.hostname, uri.port, req_options) do |http|
#  http.request(request)
# end
#
# puts getJoke

newJoke = getJoke[getJoke.keys[1]]
newJoke2 = getJoke[getJoke.keys[1]]

puts newJoke
puts newJoke2
# puts getJoke.class
# puts getJoke[getJoke.keys[1]]
# puts getJoke[:joke]

# puts response
# puts response.body[:results]
# puts response.body.map {|k, v| v }
#
# what = response.body.map {|joke| joke[:joke]}
# puts what

# puts response2.body
