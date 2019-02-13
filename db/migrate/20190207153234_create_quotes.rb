require 'net/http'
require 'uri'
require 'json'

#
# def getJoke
#   uri = URI.parse("https://icanhazdadjoke.com/")
#     request = Net::HTTP::Get.new(uri)
#     request["Accept"] = "application/json"
#
#     req_options = {
#      use_ssl: uri.scheme == "https",
#     }
#
#   response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
#      http.request(request)
#   end
#   JSON.parse(response.body)
# end

class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :content
      t.string :author

      t.timestamps
    end
  end
end
